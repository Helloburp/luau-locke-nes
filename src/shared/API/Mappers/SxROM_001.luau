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
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>

local T_NES = require(inst_nes["NES.types"])
type Cartridge = T_NES.Cartridge


local T = require(script.Parent["SxROM_001.types"])
type EControl = T.EControl
type State = T.State


local C = require(script.Parent["SxROM_001.constants"])

local MirroringModes = require(inst_api.MirroringModes)
local ControlRegister = C.ControlRegister

local BAND, RSHIFT = bit32.band, bit32.rshift


local m = {}


function m.MapperInterface(rom: Rom): IMapper<State>
    return {
        FromState = function(emulationState: EmulationState<State,any>)
            return _newFromRom(rom, emulationState.Mapper)
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
                Write = function(addr: u16, data: u8) return m.CpuWrite(addr, data, state) end
            }
        ),

        PpuPeripheral = RamState.WithChrRam(
            state.Ram,
            {
                Read = function(addr: u16) return _ppuRead(addr, state, rom) end,
            }
        ),

        MirrorVRam = function(addr: u16)
            local mirroringMode = ControlRegister.Get("NametableArrangement", state.Control)
            return if mirroringMode == C.MIRROR_SELECT.SingleScreenLow then
                    MirroringModes.SingleScreenLow(addr)
                elseif mirroringMode == C.MIRROR_SELECT.SingleScreenHigh then
                    MirroringModes.SingleScreenHigh(addr)
                elseif mirroringMode == C.MIRROR_SELECT.Horizontal then
                    MirroringModes.Horizontal(addr)
                elseif mirroringMode == C.MIRROR_SELECT.Vertical then
                    MirroringModes.Vertical(addr)
                else error(`Invalid Mirroring Mode '{mirroringMode}'`)
        end,
    }
end


function m.CpuWrite(addr: u16, data: u8, state: State)
    if addr < 0x8000 then return nil end

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
    local registerSelect = RSHIFT(addr, 13)%4
    state.Shift = 0x10
    
    if registerSelect == C.REG_SELECT.Control then
        state.Control = value
    elseif registerSelect == C.REG_SELECT.ChrBank0 then
        state.ChrBank0 = value
    elseif registerSelect == C.REG_SELECT.ChrBank1 then
        state.ChrBank1 = value
    elseif registerSelect == C.REG_SELECT.PrgBank then
        state.PrgBank = value
    end

    return true
end


function m.GetBank32KB(prgBankByte: u8)
    return RSHIFT(BAND(prgBankByte, 0b01110), 1)
end


function m.GetBank16KB(prgBankByte: u8)
    return BAND(prgBankByte, 0b01111)
end


function _cpuRead(addr: u16, state: State, rom: Rom): number?
    if addr < 0x8000 then return nil end

    local prgRomMode = ControlRegister.Get("PrgRomMode", state.Control)

    if prgRomMode == 0 or prgRomMode == 1 then  -- 32kb mode
        local bank = m.GetBank32KB(state.PrgBank)
        return rom.Interface.PrgMem.Read(bank * 0x8000 + addr%0x8000)

    elseif prgRomMode == 2 then                 -- First bank at 0x8000
        if addr < 0xC000 then
            return rom.Interface.PrgMem.Read(0 * 0x4000 + addr%0x4000)
        else
            local bank = m.GetBank16KB(state.PrgBank)
            return rom.Interface.PrgMem.Read(bank * 0x4000 + addr%0x4000)
        end

    elseif prgRomMode == 3 then                 -- Last bank at 0xC000
        if addr < 0xC000 then
            local bank = m.GetBank16KB(state.PrgBank)
            return rom.Interface.PrgMem.Read(bank * 0x4000 + addr%0x4000)
        else
            return rom.Interface.PrgMem.Read(
                (rom.Header.PrgRom16kBankCount - 1) * 0x4000 + addr%0x4000
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
    state.Control = ControlRegister.Set("PrgRomMode", state.Control, 0b11)
end


return m