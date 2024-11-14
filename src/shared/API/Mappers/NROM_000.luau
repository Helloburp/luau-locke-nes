--!optimize 2
local inst_root = script.Parent.Parent.Parent
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API

local T_P = require(inst_api["Parse.types"])
local Parse = require(inst_api.Parse)

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Mem = T_H.Bus

local T_NES = require(inst_nes["NES.types"])
type IMapper<State> = T_NES.IMapper<State>


local ADDR_MIN, ADDR_MAX = 0x8000, 0xFFFF
local ADDR_RANGE = ADDR_MAX - ADDR_MIN + 1

local RU8 = buffer.readu8

local m = {}


function m.MapperInterface(rom: buffer): IMapper<nil>
    return {
        NewCartridge = function(state: nil)
            return m.NewFromRom(rom, Parse.Header(rom))
        end,
        CopyState = function(state: nil) return nil end,
        NewState = function() return nil end
    }
end


function m.NewFromRom(
    rom: buffer,
    header: T_P.Header
): T_NES.Cartridge<nil>
    local prgBank0, prgBanks = Parse.PrgRomOffset(
        header.HasTrainer, 0
    ), header.PrgRom16kBankCount

    local chrBank0 = Parse.ChrMemOffset(
        header.HasTrainer, header.PrgRom16kBankCount, 0
    )

    local mirroringIsVertical = header.NametableArrangement == "Vertical"

    return {
        CpuPeripheral = {
            Read = function(addr: u16)
                return m.CpuReadFromBuffer(addr, rom, prgBank0, prgBanks)
            end
        },
        PpuPeripheral = {
            Read = function(addr: u16)
                return m.PpuReadFromBuffer(addr, rom, chrBank0)
            end
        },
        GetIsMirroringVertical = function()
            return mirroringIsVertical
        end,
    }
end


function m.CpuReadFromBuffer(
    addr: u16,
    rom: buffer,
    bank0Offset: number,
    prgBanks: number        -- Must be 0 or 1
): number?
    if addr < 0x8000 then return nil end

    -- Proper mirroring of the chr rom
    addr = (addr - 0x8000)%(ADDR_RANGE/(3 - prgBanks))
    return RU8(rom, bank0Offset + addr)
end


function m.PpuReadFromBuffer(
    addr: u16,
    rom: buffer,
    bank0Offset: number
): number?
    -- This "mapper" only maps the pattern tables
    if addr >= 0x2000 then return nil end
    return RU8(rom, bank0Offset + addr)
end


return m