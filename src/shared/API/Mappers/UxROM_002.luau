--!optimize 2

local inst_root = script.Parent.Parent.Parent
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API

local Parse = require(inst_api.Parse)
local RamState = require(inst_api.RamState)
local MirroringModes = require(inst_api.MirroringModes)

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


export type State = {
    Bank: u8,
    Ram: RamState
}


local m = {}


function m.MapperInterface(rom: Rom): IMapper<State>
    return {
        FromState = function(emulationState: EmulationState<State,any>)
            return _newFromRom(rom, emulationState.Mapper)
        end,
        NewState = function()
            return {
                Bank = 0,
                Ram = Parse.RamState(rom.Header)
            }
        end,
        CopyState = function(state: State)
            return {
                Bank = state.Bank,
                Ram = RamState.Copy(state.Ram)
            }
        end
    }
end


function _newFromRom(rom: Rom, state: State): Cartridge
    return {
        CpuPeripheral = {
            Read = function(addr: u16) return _cpuRead(addr, state, rom) end,
            Write = function(addr: u16, data: u8) return _cpuWrite(addr, data, state) end
        },
        PpuPeripheral = RamState.WithChrRam(state.Ram, {
            Read = function(addr: u16) return _ppuRead(addr, state, rom) end
        }),
        MirrorVRam = if rom.Header.NametableArrangement == "Horizontal"
            then MirroringModes.Horizontal
            else MirroringModes.Vertical
    }
end


function _cpuRead(addr: u16, state: State, rom: Rom)
    if addr < 0x8000 then return nil end

    local bank = if addr < 0xC000
        then state.Bank%rom.Header.PrgRom16kBankCount
        else rom.Header.PrgRom16kBankCount - 1
    
    return rom.Interface.PrgMem.Read(0x4000 * bank + addr % 0x4000)
end


function _cpuWrite(addr: u16, data: u8, state: State)
    if addr < 0x8000 then return false end
    state.Bank = data
    return true
end


function _ppuRead(addr: u16, state: State, rom: Rom)
    if addr >= 0x2000 then return nil end
    return rom.Interface.ChrMem.Read(addr)
end


return m