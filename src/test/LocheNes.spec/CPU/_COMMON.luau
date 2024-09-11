--!nolint UnknownGlobal
--!nocheck


local root = script.Parent.Parent.Parent.Parent.Shared
local h = require(root.Helpers)
local T = require(root._TYPES)
type u8 = T.u8

local BAND, BXOR, BNOT =
    bit32.band, bit32.bxor, bit32.bnot

local regs = h.NewRegisters()
local mem = h.NewMemory()


return function(expect: any)
    local function _testFlag(flag: T.EStatusFlag, expected: boolean)
        expect(h.GetFlag(flag, regs.STATUS)).to.equal(expected)
    end

    local function _testZeroAndNegative(result: u8)
        _testFlag("Z", result == 0)
        _testFlag("N", BAND(result, 0x80) > 0)
    end

    local function _testOverflow(op1: u8, op2: u8, result: u8)
        -- V = !((M^N) & 0x80) && ((M^result) & 0x80)
        _testFlag("V", h.GetBit(7, BAND(
                BNOT(BXOR(op1, op2)), -- op1 has the same sign as op2
                BXOR(op1, result) -- op1 has a different sign from result
            ))
        )
    end

    local m = {}

    m.Regs = function() return regs end
    m.Mem = function() return mem end
    m.TestFlag = _testFlag
    m.TestZeroAndNegative = _testZeroAndNegative
    m.TestOverflow = _testOverflow
    m.SetFlag = function(flag: T.EStatusFlag, value: boolean)
        return h.SetFlag(flag, regs, value)
    end
    m.GetFlag = function(flag: T.EStatusFlag)
        return h.GetFlag(flag, regs.STATUS)
    end
    m.Reset = function() regs = h.NewRegisters(); mem = h.NewMemory() end

    return m
end