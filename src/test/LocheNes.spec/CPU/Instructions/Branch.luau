--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

local BAND = bit32.band

return function()
    local c = _newCommon(expect)

    local function _checkPCAfterJump(regs, oldPc, newAddr)
        expect(regs.PC).to.equal(newAddr)
    end
    
    local function _newBranchTest(
        instruction, shouldJumpPredicate: () -> (boolean),
        pc, newAddress
    )
        return function()
            local shouldJump = shouldJumpPredicate()
            local jumpsToNewPage = BAND(newAddress, 0xFF00) ~= BAND(pc, 0xFF00)

            local regs, mem = c.Regs(), c.Mem()
            regs.PC = pc
            mem.Write(0, newAddress)

            local expectedCycles = if shouldJump
                then (if jumpsToNewPage then 2 else 1)
                else 0
            
            c.TestInstructionExecution(instruction, newAddress, expectedCycles)

            _checkPCAfterJump(
                regs, pc,
                if shouldJump then newAddress else pc
            )

            c.TestNoUntestedFlagsChanged()
        end
    end

    local function _newBranchTestMultiple(
        instruction, shouldJumpPredicate: () -> (boolean),
        _setState: () -> ()
    )
        return function()
            for pc = 0, 0x8000, 0x2000 do
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

    describe("BVC", _newBranchDescribe(
        m.BVC,
        function() return not c.GetFlag("V") end,
        function(shouldBranch) return function() c.SetFlag("V", not shouldBranch) end end
    ))

    describe("BVS", _newBranchDescribe(
        m.BVS,
        function() return c.GetFlag("V") end,
        function(shouldBranch) return function() c.SetFlag("V", shouldBranch) end end
    ))
end