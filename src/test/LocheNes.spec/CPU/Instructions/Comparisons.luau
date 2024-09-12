--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local _u8 = h.WrapU8

return function()
    local c = _newCommon(expect)


    local function _compareTest(instruction, reg, addr, val, regVal)
        local result = _u8(c.Regs()[reg] - val)
        c.Mem().Write(addr, val)
        c.Regs()[reg] = regVal

        c.TestInstructionExecution(instruction, addr, 0)
        c.TestZeroAndNegative(result)
        c.TestFlag("C", c.Regs()[reg] >= val)
        c.TestNoUntestedFlagsChanged()
    end

    local function _newCompareDescribeBlock(instruction, reg)
        return function()
            it("Compares as expected", function()
                _compareTest(instruction, reg, 0x0000, 0x00, 0x00)
                _compareTest(instruction, reg, 0x0000, 0x01, 0x01)
                _compareTest(instruction, reg, 0x00FF, 0x00, 0x01)
                _compareTest(instruction, reg, 0xEFEF, 0xFE, 0xFF)
                _compareTest(instruction, reg, 0xFFFF, 0xEE, 0xED)
            end)
        end
    end

    describe("CMP", _newCompareDescribeBlock(m.CMP, "A"))
    describe("CPX", _newCompareDescribeBlock(m.CPX, "X"))
    describe("CPY", _newCompareDescribeBlock(m.CPY, "Y"))
end