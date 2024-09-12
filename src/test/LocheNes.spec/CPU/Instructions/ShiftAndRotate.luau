--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    --[[ A,Z,C,N = M*2 or M,Z,C,N = M*2
        C = contents of old bit 7;  Z = Result is zero
        N = Bit 7 of result is set
    ]]
    describe("ASL", function()
        local function _newASLTest(op, result, addr)
            return function()
                local regs, mem = c.Regs(), c.Mem()
                if addr then mem.Write(addr, op) else regs.A = op end
                c.TestInstructionExecution(m.ASL, addr, 0)
                local writtenResult =
                    if not addr then regs.A
                    else mem.Read(addr)
                
                expect(writtenResult).to.equal(result)

                c.TestZeroAndNegative(writtenResult)
                c.TestFlag("C", bit32.lshift(op, 1) > 255)
            end
        end
        it("8 << 1 = 16 Implied", _newASLTest(8, 16, nil))
        it("128 << 1 = 0 Absolute (C, Z)", _newASLTest(128, 0, 0))
        it("65 << 1 = 130 Absolute (N)", _newASLTest(65, 130, 5))
    end)

    describe("LSR", c.UnimplementedTest)
    describe("ROL", c.UnimplementedTest)
    describe("ROR", c.UnimplementedTest)
end