local inst_root = script.Parent.Parent

local Parse = require(inst_root.Parse)

local T_H = require(inst_root["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Mem = T_H.Bus

local ADDR_MIN, ADDR_MAX = 0x8000, 0xFFFF
local ADDR_RANGE = ADDR_MAX - ADDR_MIN + 1

local RU8 = buffer.readu8

local m = {}


function m.CpuReadFromBuffer(
    addr: u16,
    rom: buffer,
    bank0Offset: number,
    prgBanks: number        -- Must be 0 or 1
): number?
    if addr < ADDR_MIN or addr > ADDR_MAX then return nil end

    addr = (addr - ADDR_MIN)%(ADDR_RANGE/(3 - prgBanks))
    return RU8(rom, bank0Offset + addr)
end


return m