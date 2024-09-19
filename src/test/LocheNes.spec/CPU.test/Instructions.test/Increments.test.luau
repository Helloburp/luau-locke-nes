--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local _u8 = h.WrapU8

return function()
    local c = _newCommon(expect)

    local function _testMemIncrement(instruction, val, addr, shouldDecrement)
        local mem = c.Mem()
        mem.Write(addr, val)

        c.TestInstructionExecution(instruction, addr, 0)
        local result = _u8(val + if shouldDecrement then -1 else 1)
        expect(mem.Read(addr)).to.equal(result)
        c.TestZeroAndNegative(result)
        c.TestNoUntestedFlagsChanged()
    end

    local function _testRegIncrement(instruction, reg, val, shouldDecrement)
        local regs = c.Regs()
        regs[reg] = val
        c.TestInstructionExecution(instruction, nil, 0)
        local result = _u8(val + if shouldDecrement then -1 else 1)

        expect(regs[reg]).to.equal(result)
        c.TestZeroAndNegative(regs[reg])
        c.TestNoUntestedFlagsChanged()
    end

    local function _memIncrementDescribeBlock(instruction, shouldDecrement)
        return function()
            it("Computes properly", function()
                _testMemIncrement(instruction, 0x00, 0x0000, shouldDecrement)
                _testMemIncrement(instruction, 0xFF, 0x0000, shouldDecrement)
                _testMemIncrement(instruction, 0x00, 0xFFFF, shouldDecrement)
                _testMemIncrement(instruction, 0xFF, 0xFFFF, shouldDecrement)
            end)
        end
    end

    local function _regIncrementDescribeBlock(instruction, reg, shouldDecrement)
        return function()
            it("Computes properly", function()
                _testRegIncrement(instruction, reg, 0x00, shouldDecrement)
                _testRegIncrement(instruction, reg, 0xFF, shouldDecrement)
                _testRegIncrement(instruction, reg, 0x00, shouldDecrement)
                _testRegIncrement(instruction, reg, 0xFF, shouldDecrement)
            end)
        end
    end

    describe("DEC", _memIncrementDescribeBlock(m.DEC, true))
    describe("DEX", _regIncrementDescribeBlock(m.DEX, "X", true))
    describe("DEY", _regIncrementDescribeBlock(m.DEY, "Y", true))
    describe("INC", _memIncrementDescribeBlock(m.INC, false))
    describe("INX", _regIncrementDescribeBlock(m.INX, "X", false))
    describe("INY", _regIncrementDescribeBlock(m.INY, "Y", false))
end