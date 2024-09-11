--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    local function _newAccumulatorTest(instruction, op1, op2, result)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            regs.A = op1
            mem.Write(0, op2)
            instruction(regs, 0, mem)
            expect(regs.A).to.equal(result)
            c.TestZeroAndNegative(regs.A)
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
end