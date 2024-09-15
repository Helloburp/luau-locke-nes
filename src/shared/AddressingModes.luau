
--[[ Sources:
    https://www.nesdev.org/wiki/CPU_addressing_modes
    https://www.nesdev.org/obelisk-6502-guide/addressing.html
]]

local T = require(script.Parent._TYPES)
type u8 = T.u8
type u16 = T.u16
type Regs = T.Registers
type Mem = T.IMemory

local Helpers = require(script.Parent.Helpers)
local _u8, _u16 = Helpers.WrapU8, Helpers.WrapU16
local _s8ToS16 = Helpers.Signed8ToSigned16

local BAND, LSHIFT = bit32.band, bit32.lshift

local m = {}


function m.ZPX(regs: Regs, arg: u8): u16
    return _u8(arg + regs.X)
end

function m.ZPY(regs: Regs, arg: u8): u16
    return _u8(arg + regs.Y)
end

function m.ABX(regs: Regs, arg: u16): u16
    return _u16(arg + regs.X), BAND(arg, 0xFF) + regs.X > 255
end

function m.ABY(regs: Regs, arg: u16): u16
    return _u16(arg + regs.Y), BAND(arg, 0xFF) + regs.Y > 255
end

function m.IZX(regs: Regs, arg: u8, mem: Mem): u16
    local lo = mem.Read(_u8(arg + regs.X))
    local hi = mem.Read(_u8(arg + regs.X + 1))
    return lo + LSHIFT(hi, 8)
end

function m.IZY(regs: Regs, arg: u8, mem: Mem): u16
    local lo = mem.Read(arg)
    local hi = mem.Read(_u8(arg + 1))
    return _u16(lo + LSHIFT(hi, 8) + regs.Y), lo + regs.Y > 255
end

function m.IMP() return nil end
function m.ACC() return nil end

function m.ZP0(regs: Regs, arg: u8): u16 return arg end
function m.ABS(regs: Regs, arg: u16): u16 return arg end

function m.REL(regs: Regs, arg: u8): u16
    return _u16(regs.PC + _s8ToS16(arg))
end

-- The PC has already moved to the next instruction by this point;
-- Backtrack to get the argument.
function m.IMM(regs: Regs)
    return _u16(regs.PC - 1)
end

return m