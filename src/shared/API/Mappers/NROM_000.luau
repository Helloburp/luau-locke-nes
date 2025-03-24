--!optimize 2
local inst_root = script.Parent.Parent.Parent
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API

local T_P = require(inst_api["Parse.types"])

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Rom = T_P.Rom

local T_EMU = require(inst_api["Emulation.types"])
type IMapper<State> = T_EMU.IMapper<State>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>


local T_NES = require(inst_nes["NES.types"])
type Cartridge = T_NES.Cartridge


local MirroringModes = require(inst_api.MirroringModes)


local m = {}

local ADDR_MIN = 0x8000
local ADDR_RANGE = 0x8000


function m.MapperInterface(rom: Rom): IMapper<nil>
    local _prgRead, _chrRead = rom.Interface.PrgMem.Read, rom.Interface.ChrMem.Read
    local prgRom16kBankCount = rom.Header.PrgRom16kBankCount

    return {
        FromState = function(_: EmulationState<nil,any>)
            return {

                CpuPeripheral = {
                    Read = _newCpuReadFromBuffer(prgRom16kBankCount, _prgRead)
                },

                PpuPeripheral = {
                    Read = function(addr: u16)
                        if addr >= 0x2000 then return nil end
                        return _chrRead(addr)
                    end
                },

                MirrorVRam = if rom.Header.NametableArrangement == "Vertical"
                    then MirroringModes.Vertical
                    else MirroringModes.Horizontal
            }
        end,

        CopyState = function(state: nil) return nil end,
        NewState = function() return nil end
    }
end


function _newCpuReadFromBuffer(
    prgRom16kBankCount: number,
    _readPrgRom: (u16) -> u8
)
    return function(addr: u16)
        if addr < ADDR_MIN then return nil end
        addr = (addr - ADDR_MIN)%(ADDR_RANGE/(3 - prgRom16kBankCount))
        return _readPrgRom(addr)
    end
end


m.CpuReadFromBuffer = function(
    addr: u16,
    prgRom16kBankCount: number,
    _readPrgRom: (u16) -> u8
)
    return _newCpuReadFromBuffer(prgRom16kBankCount, _readPrgRom)(addr)
end


return m