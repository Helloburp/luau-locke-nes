--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent._COMMON)


return function()
    local c = _newCommon(expect)

    local function _checkPCAfterJump(regs, oldPc, operand)
        local offset = h.Signed8ToSigned16(operand)
        expect(regs.PC).to.equal(h.WrapU16(oldPc + offset))
    end
    
    local function _newBranchTest(
        instruction, shouldJumpPredicate: () -> (boolean),
        pc, operand
    )
        return function()
            local regs, mem = c.Regs(), c.Mem()
            regs.PC = pc
            mem.Write(0, operand)
            instruction(regs, 0, mem)
            _checkPCAfterJump(
                regs, pc,
                if shouldJumpPredicate() then operand else 0
            )
        end
    end

    local function _newBranchTestMultiple(
        instruction, shouldJumpPredicate: () -> (boolean),
        _setState: () -> ()
    )
        return function()
            for pc = 0, 0x8000, 0x1000 do
                for operand = 0, 250, 50 do
                    c.Reset()
                    _setState()
                    _newBranchTest(instruction, shouldJumpPredicate, pc, operand)()
                end
            end
        end
    end

    local function _newBranchDescribe(
        instruction,
        _shouldBranchPredicate: () -> (),
        _getSetState: (shouldBranch: boolean) -> (() -> ())
    )
        return function()
            it("Branch Condition", _newBranchTestMultiple(
                instruction, _shouldBranchPredicate, _getSetState(true)
            ))
            it("Not Branch Condition", _newBranchTestMultiple(
                instruction, _shouldBranchPredicate, _getSetState(false)
            ))
        end
    end

    describe("BCC", _newBranchDescribe(
        m.BCC,
        function() return not c.GetFlag("C") end,
        function(shouldBranch) return function() c.SetFlag("C", not shouldBranch) end end
    ))
    describe("BCS", _newBranchDescribe(
        m.BCS,
        function() return c.GetFlag("C") end,
        function(shouldBranch) return function() c.SetFlag("C", shouldBranch) end end
    ))

    describe("BEQ", _newBranchDescribe(
        m.BEQ,
        function() return c.GetFlag("Z") end,
        function(shouldBranch) return function() c.SetFlag("Z", shouldBranch) end end
    ))

    describe("BNE", _newBranchDescribe(
        m.BNE,
        function() return not c.GetFlag("Z") end,
        function(shouldBranch) return function() c.SetFlag("Z", not shouldBranch) end end
    ))

    describe("BPL", _newBranchDescribe(
        m.BPL,
        function() return not c.GetFlag("N") end,
        function(shouldBranch) return function() c.SetFlag("N", not shouldBranch) end end
    ))

    describe("BMI", _newBranchDescribe(
        m.BMI,
        function() return c.GetFlag("N") end,
        function(shouldBranch) return function() c.SetFlag("N", shouldBranch) end end
    ))
end