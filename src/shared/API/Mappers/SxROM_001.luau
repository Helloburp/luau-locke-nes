--!optimize 2


--[[
    MMC1A / Mapper 001 Implementation
]]

local inst_root = script.Parent.Parent.Parent
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API

local h = require(inst_core.Helpers)

local Parse = require(inst_api.Parse)
local RamState = require(inst_api.RamState)

local T_P = require(inst_api["Parse.types"])
type Rom = T_P.Rom

local T_RAMSTATE = require(inst_api["RamState.types"])
type RamState = T_RAMSTATE.RamState


local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Peripheral = T_H.Peripheral


local T_EMU = require(inst_api["Emulation.types"])
type IMapper<State> = T_EMU.IMapper<State>

local T_NES = require(inst_nes["NES.types"])
type Cartridge = T_NES.Cartridge


export type EControl = "NametableArrangement" | "PrgRomMode" | "ChrRomMode"


export type State = {
    Ram: RamState,
    Control: u8,
    ChrBank0: u8,
    ChrBank1: u8,
    PrgBank: u8,
    Shift: u8
}

local CONTROL_MASKS: {[EControl]: number} = {
    ["NametableArrangement"]    = 0b00011,
    ["PrgRomMode"]              = 0b01100,
    ["ChrRomMode"]              = 0b10000,
}

local REG_SELECT = {
    Control     = 0b00,
    ChrBank0    = 0b01,
    ChrBank1    = 0b10,
    PrgBank     = 0b11,
}

local MIRROR_SELECT = {
    SingleScreenLow     = 0b00,
    SingleScreenHigh    = 0b01,
    Horizontal          = 0b10,
    Vertical            = 0b11
}

local MirroringModes = require(inst_api.MirroringModes)
local ControlRegister = h.NewBitfieldFunctions(CONTROL_MASKS)

local BAND, RSHIFT = bit32.band, bit32.rshift


local m = {}


function m.MapperInterface(rom: Rom): IMapper<State>
    return {
        FromState = function(state: State)
            return _newFromRom(rom, state)
        end,
        CopyState = function(state: State)
            return {
                Ram = RamState.Copy(state.Ram),
                Control = state.Control,
                ChrBank0 = state.ChrBank0,
                ChrBank1 = state.ChrBank1,
                PrgBank = state.PrgBank,
                Shift = state.Shift,
            }
        end,
        NewState = function()
            return {
                Ram = Parse.RamState(rom.Header),
                Control = 0b01100,
                ChrBank0 = 0x00,
                ChrBank1 = 0x00,
                PrgBank = 0x00,
                Shift = 0x10,
            }
        end
    }
end

function _newFromRom(
    rom: Rom,
    state: State
): Cartridge
    return {
        CpuPeripheral = RamState.WithPrgRam(
            state.Ram, 
            {
                Read = function(addr: u16) return _cpuRead(addr, state, rom) end,
                Write = function(addr: u16, data: u8) return _cpuWrite(addr, data, state) end
            }
        ),

        PpuPeripheral = RamState.WithChrRam(
            state.Ram,
            {
                Read = function(addr: u16) return _ppuRead(addr, state, rom) end,
                Write = function(addr: u16, data: u8) return false end
            }
        ),

        MirrorVRam = function(addr: u16)
            local mirroringMode = ControlRegister.Get("NametableArrangement", state.Control)
            return if mirroringMode == MIRROR_SELECT.SingleScreenLow then
                    MirroringModes.SingleScreenLow(addr)
                elseif mirroringMode == MIRROR_SELECT.SingleScreenHigh then
                    MirroringModes.SingleScreenHigh(addr)
                elseif mirroringMode == MIRROR_SELECT.Horizontal then
                    MirroringModes.Horizontal(addr)
                elseif mirroringMode == MIRROR_SELECT.Vertical then
                    MirroringModes.Vertical(addr)
                else error(`Invalid Mirroring Mode '{mirroringMode}'`)
        end,
    }
end


function _cpuWrite(addr: u16, data: u8, state: State)
    local clear = h.GetBit(7, data)

    if clear then
        _reset(state)
        return true
    end


    local bit = h.GetBit(0, data)
    local isFull = h.GetBit(0, state.Shift)

    state.Shift =  RSHIFT(state.Shift, 1) + (if bit then 16 else 0)


    if not isFull then return true end

    local value = state.Shift
    local registerSelect = RSHIFT(addr, 13) - 4
    state.Shift = 0x10
    
    if registerSelect == REG_SELECT.Control then
        state.Control = value
    elseif registerSelect == REG_SELECT.ChrBank0 then
        state.ChrBank0 = value
    elseif registerSelect == REG_SELECT.ChrBank1 then
        state.ChrBank1 = value
    elseif registerSelect == REG_SELECT.PrgBank then
        state.PrgBank = value
    end

    return true
end


function _cpuRead(addr: u16, state: State, rom: Rom): number?
    
    if state.Ram.PrgRam and addr >= 0x6000 and addr < 0x8000 then
        return buffer.readu8(state.Ram.PrgRam, addr - 0x6000)
    end

    if addr < 0x8000 then return nil end

    local prgRomMode = ControlRegister.Get("PrgRomMode", state.Control)

    if prgRomMode == 0 or prgRomMode == 1 then  -- 32kb mode
        local bank = RSHIFT(BAND(state.PrgBank, 0b01110), 1)
        return rom.Interface.PrgMem.Read(bank * 0x8000 + addr - 0x8000)

    elseif prgRomMode == 2 then                 -- First bank at 0x8000
        if addr < 0xC000 then
            return rom.Interface.PrgMem.Read(0 * 0x4000 + addr - 0x8000)
        else
            local bank = BAND(state.PrgBank, 0b01111)
            return rom.Interface.PrgMem.Read(bank * 0x4000 + addr - 0xC000)
        end

    elseif prgRomMode == 3 then                 -- Last bank at 0xC000
        if addr < 0xC000 then
            local bank = BAND(state.PrgBank, 0b01111)
            return rom.Interface.PrgMem.Read(bank * 0x4000 + addr - 0xC000)
        else
            return rom.Interface.PrgMem.Read(
                (rom.Header.PrgRom16kBankCount - 1) * 0x4000 + addr - 0xC000
            )
        end
    end

    error(`Invalid PrgRomMode '{prgRomMode}'`)
end


function _ppuRead(addr: u16, state: State, rom: Rom): number?
    if addr >= 0x2000 then return nil end

    local chrRomMode = ControlRegister.Get("ChrRomMode", state.Control)

    if chrRomMode == 0 then         -- 4kb mode
        local bank, offset
        if addr < 0x1000 then
            bank = state.ChrBank0
            offset = 0
        else
            bank = state.ChrBank1
            offset = 0x1000
        end

        return rom.Interface.ChrMem.Read(bank * 0x1000 + addr - offset)

    elseif chrRomMode == 1 then     -- 8kb mode
        local bank = RSHIFT(state.ChrBank0, 1)
        return rom.Interface.ChrMem.Read(bank * 0x2000 + addr)
    end

    error(`Invalid ChrRomMode '{chrRomMode}'`)
end


function _reset(state: State)
    state.Shift = 0x10
    state.Control = ControlRegister.Set("PrgRomMode", state.Control, 0x11)
end


return m