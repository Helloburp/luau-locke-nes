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


local T = require(script.Parent["TxROM_004.types"])
type EBankSelect = T.EBankSelect
type State = T.State


local C = require(script.Parent["TxROM_004.constants"])
local BankSelect = C.BankSelect
local REG_SELECT = C.REG_SELECT

local MirroringModes = require(inst_api.MirroringModes)

local BAND, RSHIFT = bit32.band, bit32.rshift

local m = {}

function m.MapperInterface(rom: Rom): IMapper<State>
    return {
        FromState = function(emulationState: EmulationState<State,any>)
            return _newFromRom(rom, emulationState.Mapper)
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
                IrqReload = false,
                IrqEnabled = false,
            }
        end
    }
end


function _newFromRom(
    rom: Rom,
    state: State
): Cartridge
    return {
        CpuPeripheral = RamState.WithPrgRam(state.Ram, {
            Read = function(addr: u16) return _cpuRead(addr, state, rom) end,
            Write = function(addr: u16, data: u8) return _cpuWrite(addr, data, state, rom) end
        }),
        PpuPeripheral = RamState.WithChrRam(state.Ram, {
            Read = function(addr: u16) return _ppuRead(addr, state, rom) end
        }),
        MirrorVRam = if rom.Header.NametableArrangement == "Alternative"
            then MirroringModes.FourScreen
            else function(addr: u16)
                    return if state.MirroringIsHorizontal
                        then MirroringModes.Horizontal(addr)
                        else MirroringModes.Vertical(addr)
                end
    }
end


function _cpuRead(addr: u16, state: State, rom: Rom)
    if addr < 0x8000 then return end
    
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
            state.PrgRamProtect = data
        end
    end
end


function _ppuRead(addr: u16, state: State, rom: Rom)
    
end


return m