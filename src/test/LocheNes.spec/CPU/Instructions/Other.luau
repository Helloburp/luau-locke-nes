--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)


return function()
    local c = _newCommon(expect)

    describe("NOP", function()
        it("...doesn't operate...", function()
            c.TestInstructionExecution(m.NOP, 0, 0)
            c.TestNoUntestedFlagsChanged()
        end)
    end)

    local function _newBitTest(acc, addr, memVal)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            regs.A = acc
            mem.Write(addr, memVal)

            local result = bit32.band(memVal, regs.A)
            c.TestInstructionExecution(m.BIT, addr, 0)
            c.TestFlag("Z", result == 0)
            c.TestFlag("V", h.GetBit(6, memVal))
            c.TestFlag("N", h.GetBit(7, memVal))
            c.TestNoUntestedFlagsChanged()
        end
    end

    describe("BIT", function()
        it("Arithmetic", function()
            _newBitTest(0, 50, 255)()
            _newBitTest(255, 0, 0)()
            _newBitTest(0xFF, 0xFFFF, 0b01010100)()
        end)
    end)
end