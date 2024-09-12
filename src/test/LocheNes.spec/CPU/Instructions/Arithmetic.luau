--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

local BXOR = bit32.bxor

return function()
    local c = _newCommon(expect)

    local function _newAdderTest(
        instruction,
        op1, _op2, result,
        shouldInvertOp2, oldCarry
    )
        return function()
            local regs, mem = c.Regs(), c.Mem()
            local op2 = if shouldInvertOp2 then BXOR(_op2, 0xFF) else _op2
            mem.Write(0, _op2)
            regs.A = op1
            c.SetFlag("C", oldCarry)

            c.TestInstructionExecution(instruction, 0, 0)
            expect(regs.A).to.equal(result)

            c.TestZeroAndNegative(regs.A)
            c.TestOverflow(op1, op2, regs.A)
            c.TestFlag("C", (op1 + op2 + if oldCarry then 1 else 0) > 255)
        end
    end


    --[[ A,Z,C,N = A+M+C
        C = overflow in bit 7;  Z = if A = 0
        V = wrong sign bit;     N = if bit 7 of A is set
    ]]
    describe("ADC", function()
        local function _newADCTest(op1, op2, result, oldCarry)
            return _newAdderTest(m.ADC, op1, op2, result, false, oldCarry)
        end
        it("0 + 5 + 0 = 5", _newADCTest(0, 5, 5, false))
        it("250 + 6 (Z, C)", _newADCTest(250, 6, 0, false))
        it("80 + 80 + 1 (V, N)", _newADCTest(80, 80, 161, true))
    end)


    --[[ A,Z,C,N = A-M-(1-C)
        C = overflow in bit 7;  Z = if A = 0
        V = wrong sign bit;     N = if bit 7 of A is set
    ]]
    describe("SBC", function()
        local function _newSBCTest(op1, op2, result, oldCarry)
            return _newAdderTest(m.SBC, op1, op2, result, true, oldCarry)
        end
        it("10 - 5 - 0 = 5 (C)", _newSBCTest(10, 5, 5, true))
        it("5 - 10 - 1 = -6 (N)", _newSBCTest(5, 10, -6%256, false))
        it("-80 - 80 - 1 = 95 (C, V)", _newSBCTest(-80%256, 80, 95, false))
    end)
end