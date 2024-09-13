--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)


return function()
    local c = _newCommon(expect)

    local function _flagTest(instruction, flag, expectedValue, oldStatus)
        local regs = c.Regs()
        regs.STATUS = oldStatus
        c.TestInstructionExecution(instruction, 0, 0)
        c.TestFlag(flag, expectedValue)
        c.TestNoUntestedFlagsChanged()
    end

    local function _newFlagDescribeBlock(instruction, flag, expectedValue)
        return function()
            it("Computes properly", function()
                _flagTest(instruction, flag, expectedValue, 0x00000000)
                _flagTest(instruction, flag, expectedValue, 0x11111111)
            end)
        end
    end

    describe("CLC", _newFlagDescribeBlock(m.CLC, "C", false))
    describe("CLD", _newFlagDescribeBlock(m.CLD, "D", false))
    describe("CLI", _newFlagDescribeBlock(m.CLI, "I", false))
    describe("CLV", _newFlagDescribeBlock(m.CLV, "V", false))
    describe("SEC", _newFlagDescribeBlock(m.SEC, "C", true))
    describe("SED", _newFlagDescribeBlock(m.SED, "D", true))
    describe("SEI", _newFlagDescribeBlock(m.SEI, "I", true))
end