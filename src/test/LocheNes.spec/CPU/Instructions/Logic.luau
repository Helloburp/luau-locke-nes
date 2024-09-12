--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    local function _newAccumulatorTest(instruction, op1, op2, result)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            regs.A = op1
            mem.Write(0, op2)
            c.TestInstructionExecution(instruction, 0, 0)
            expect(regs.A).to.equal(result)
            c.TestZeroAndNegative(regs.A)
            c.TestNoUntestedFlagsChanged()
        end
    end

    --[[ A,Z,N = A&M ]]
    describe("AND", function()
        it("0 & 0 = 0", _newAccumulatorTest(m.AND, 0, 0, 0))
        it("1 & 1 = 1", _newAccumulatorTest(m.AND, 1, 1, 1))
        it("1 & 0 = 0", _newAccumulatorTest(m.AND, 1, 0, 0))
        it("2 & 1 = 0", _newAccumulatorTest(m.AND, 2, 1, 0))
        it("3 & 2 = 2", _newAccumulatorTest(m.AND, 3, 2, 2))
    end)

    describe("EOR", function()
        it("0 ^ 0 = 0", _newAccumulatorTest(m.EOR, 0, 0, 0))
        it("1 ^ 1 = 0", _newAccumulatorTest(m.EOR, 1, 1, 0))
        it("1 ^ 0 = 1", _newAccumulatorTest(m.EOR, 1, 0, 1))
        it("2 ^ 1 = 3", _newAccumulatorTest(m.EOR, 2, 1, 3))
        it("3 ^ 2 = 1", _newAccumulatorTest(m.EOR, 3, 2, 1))
    end)

    describe("ORA", function()
        it("0 | 0 = 0", _newAccumulatorTest(m.ORA, 0, 0, 0))
        it("1 | 1 = 1", _newAccumulatorTest(m.ORA, 1, 1, 1))
        it("1 | 0 = 1", _newAccumulatorTest(m.ORA, 1, 0, 1))
        it("2 | 1 = 3", _newAccumulatorTest(m.ORA, 2, 1, 3))
        it("3 | 2 = 3", _newAccumulatorTest(m.ORA, 3, 2, 3))
    end)
end