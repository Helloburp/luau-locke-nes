local inst_root = script.Parent.Parent.Parent
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API

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


local T = require(script.Parent["TxROM_004.types"])
type EBankSelect = T.EBankSelect
type State = T.State


local C = require(script.Parent["TxROM_004.constants"])
local BankSelect = C.BankSelect
local REG_SELECT = C.REG_SELECT

local MirroringModes = require(inst_api.MirroringModes)

local BAND = bit32.band

local m = {}

function m.MapperInterface(rom: Rom): IMapper<State>
    return {
        FromState = function(emulationState: EmulationState<State,any>)
            return _newFromRom(rom, emulationState)
        end,
        CopyState = function(state: State)
            local copy = table.clone(state) :: State
            copy.Ram = RamState.Copy(state.Ram)

            return copy
        end,
        NewState = function()
            return {
                Ram = Parse.RamState(rom.Header),

                BankSelect = 0x00,
                ChrBank0_2KB = 0x00,   -- R0
                ChrBank1_2KB = 0x00,
                ChrBank2_1KB = 0x00,
                ChrBank3_1KB = 0x00,
                ChrBank4_1KB = 0x00,
                ChrBank5_1KB = 0x00,
                PrgBank0_8KB = 0x00,   -- R6
                PrgBank1_8KB = 0x00,

                MirroringIsHorizontal = false,
                PrgRamProtect = 0x00,
                IrqLatch = 0x00,
                IrqReload = 0x00,
                IrqEnabled = false,
            }
        end
    }
end


function _newFromRom(
    rom: Rom,
    emulationState: EmulationState<State,any>
): Cartridge
    local mapperState = emulationState.Mapper

    return {
        CpuPeripheral = RamState.WithPrgRam(mapperState.Ram, {
            Read = function(addr: u16) return _cpuRead(addr, mapperState, rom) end,
            Write = function(addr: u16, data: u8)
                return _cpuWrite(addr, data, mapperState, rom)
            end
        }),
        PpuPeripheral = RamState.WithChrRam(mapperState.Ram, {
            Read = function(addr: u16) return _ppuRead(addr, mapperState, rom) end
        }),
        MirrorVRam = if rom.Header.NametableArrangement == "Alternative"
            then MirroringModes.FourScreen
            else function(addr: u16)
                    return if mapperState.MirroringIsHorizontal
                        then MirroringModes.Horizontal(addr)
                        else MirroringModes.Vertical(addr)
                end,
        OnScanline = function() _onScanline(emulationState) end
    }
end


function _onScanline(emulationState: EmulationState<State,any>)
    local mapperState = emulationState.Mapper

    mapperState.IrqLatch = if mapperState.IrqLatch == 0
        then mapperState.IrqReload
        else mapperState.IrqLatch - 1
    
    if mapperState.IrqLatch == 0 and mapperState.IrqEnabled then
        emulationState.Nes.Cpu.IRQInput = true
    end
end


function _cpuRead(addr: u16, state: State, rom: Rom)
    if addr < 0x8000 then return end

    local mode = BankSelect.GetBit("PrgRomMode", state.BankSelect)
    local bank8k =
        if addr <= 0x9FFF then mode and -2 or state.PrgBank0_8KB
        elseif addr <= 0xBFFF then state.PrgBank1_8KB
        elseif addr <= 0xDFFF then mode and state.PrgBank0_8KB or -2
        else -1
    
    return rom.Interface.PrgMem.Read(
        bank8k%(rom.Header.PrgRom16kBankCount*2) * 0x2000 + addr%0x2000
    )
end


function _cpuWrite(addr: u16, data: u8, state: State, rom: Rom)
    if addr < 0x8000 then return end

    if addr <= 0x9FFF then
        if addr%2 == 0 then         -- Bank Select
            state.BankSelect = data
        else                        -- Bank Data
            local register = BankSelect.Get("RegisterSelect", state.BankSelect)
            if register == REG_SELECT.ChrBank0_2KB then
                state.ChrBank0_2KB = data
            elseif register == REG_SELECT.ChrBank1_2KB then
                state.ChrBank1_2KB = data
            elseif register == REG_SELECT.ChrBank2_1KB then
                state.ChrBank2_1KB = data
            elseif register == REG_SELECT.ChrBank3_1KB then
                state.ChrBank3_1KB = data
            elseif register == REG_SELECT.ChrBank4_1KB then
                state.ChrBank4_1KB = data
            elseif register == REG_SELECT.ChrBank5_1KB then
                state.ChrBank5_1KB = data
            elseif register == REG_SELECT.PrgBank0_8KB then
                state.PrgBank0_8KB = data
            elseif register == REG_SELECT.PrgBank1_8KB then
                state.PrgBank1_8KB = data
            end
        end
    elseif addr <= 0xBFFF then
        if addr%2 == 0 then
            state.MirroringIsHorizontal = data%2 == 1
        else
            -- PrgRam unimplemented
            -- state.PrgRamProtect = data
        end
    elseif addr <= 0xDFFF then
        if addr%2 == 0 then
            state.IrqReload = data
        else
            state.IrqLatch = 0
        end
    else
        state.IrqEnabled = addr%2 == 1
    end

    return true
end


function _ppuRead(addr: u16, state: State, rom: Rom)
    if addr >= 0x2000 then return end

    local chrBankCount8k = rom.Header.ChrMemory._t == "Rom"
        and rom.Header.ChrMemory.ChrRom8kBankCount
        or error("Cannot read from ChrRom if cartridge has ChrRam.")
    
    local mode = BankSelect.GetBit("ChrBankInversion", state.BankSelect)
    local bank1k =
        if addr <= 0x03FF then mode and state.ChrBank2_1KB or BAND(state.ChrBank0_2KB, 0xFE)
        elseif addr <= 0x07FF then mode and state.ChrBank3_1KB or BAND(state.ChrBank0_2KB, 0xFE)+1
        elseif addr <= 0x0BFF then mode and state.ChrBank4_1KB or BAND(state.ChrBank1_2KB, 0xFE)
        elseif addr <= 0x0FFF then mode and state.ChrBank5_1KB or BAND(state.ChrBank1_2KB, 0xFE)+1
        elseif addr <= 0x13FF then mode and BAND(state.ChrBank0_2KB, 0xFE) or state.ChrBank2_1KB
        elseif addr <= 0x17FF then mode and BAND(state.ChrBank0_2KB, 0xFE)+1 or state.ChrBank3_1KB
        elseif addr <= 0x1BFF then mode and BAND(state.ChrBank1_2KB, 0xFE) or state.ChrBank4_1KB
        else mode and BAND(state.ChrBank1_2KB, 0xFE)+1 or state.ChrBank5_1KB
    
    return rom.Interface.ChrMem.Read(
        (bank1k%(chrBankCount8k*8)) * 0x400 + addr%0x400
    )
end


return m