--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local BAND = bit32.band

local _u8, _u16 = h.WrapU8, h.WrapU16


return function()
    local c = _newCommon(expect)

    local function _newBreakTest(oldPc, oldStatus, oldStkp, interruptVector)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            mem.Write(0xFFFE, BAND(interruptVector, 0x00FF))
            mem.Write(0xFFFF, BAND(interruptVector, 0xFF00))
            regs.PC = oldPc
            regs.STATUS = oldStatus
            regs.SP = oldStkp

            c.TestInstructionExecution(m.BRK, nil, 0)
            expect(regs.PC).to.equal(interruptVector)

            expect(regs.SP).to.equal(_u8(oldStkp - 3))

            -- TODO

            c.TestFlag("B", true)
            c.TestNoUntestedFlagsChanged()
        end
    end

    describe("BRK", function()

    end)

end