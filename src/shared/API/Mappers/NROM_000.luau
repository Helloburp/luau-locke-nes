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

local T_NES = require(inst_nes["NES.types"])
type Cartridge = T_NES.Cartridge


local MirroringModes = require(inst_api.MirroringModes)


local m = {}

local ADDR_MIN = 0x8000
local ADDR_RANGE = 0x8000


function m.MapperInterface(rom: Rom): IMapper<nil>
    return {
        FromState = function(state: nil)
            return {
                CpuPeripheral = {
                    Read = function(addr: u16)
                        return m.CpuReadFromBuffer(
                            addr,
                            rom.Header.PrgRom16kBankCount,
                            rom.Interface.PrgMem.Read
                        )
                    end
                },
                PpuPeripheral = {
                    Read = function(addr: u16)
                        return _ppuReadFromBuffer(
                            addr, rom.Interface.ChrMem.Read
                        )
                    end
                },
                MirrorVRam = function(addr: u16)
                    return if rom.Header.NametableArrangement == "Vertical"
                        then MirroringModes.Vertical(addr)
                        else MirroringModes.Horizontal(addr)
                end,
            }
        end,

        CopyState = function(state: nil) return nil end,
        NewState = function() return nil end
    }
end


function m.CpuReadFromBuffer(
    addr: u16,
    prgRom16kBankCount: number,
    _readPrgRom: (u16) -> u8
): u8?
    if addr < ADDR_MIN then return nil end
    addr = (addr - ADDR_MIN)%(ADDR_RANGE/(3 - prgRom16kBankCount))
    return _readPrgRom(addr)
end


function _ppuReadFromBuffer(
    addr: u16,
    _readChrRom: (u16) -> (u8)
): u8?
    if addr >= 0x2000 then return nil end
    return _readChrRom(addr)
end


return m