--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local _u8, _u16 = h.WrapU8, h.WrapU16

local BAND, BOR = bit32.band, bit32.bor

return function()
    local c = _newCommon(expect)


    local function _testPush(instruction, oldSp, reg, val)
        local regs, mem = c.Regs(), c.Mem()

        regs[reg] = val
        regs.SP = oldSp

        if reg == "STATUS" then
            -- Break flag and bit 5 set to 1
            val = BOR(val, 0b00110000)
        end

        c.TestInstructionExecution(instruction, nil, 0)
        expect(mem.Read(0x0100 + oldSp)).to.equal(val)
        expect(regs.SP).to.equal(_u8(oldSp - 1))
    end

    local function _newPushDescribeBlock(instruction, reg)
        return function()
            it("Computes properly", function()
                _testPush(instruction, 0x00, reg, 0x00)
                _testPush(instruction, 0xFF, reg, 0x00)
                _testPush(instruction, 0x00, reg, 0xFF)
                _testPush(instruction, 0xFF, reg, 0xFF)
                _testPush(instruction, 0xEE, reg, 0xFF)
                _testPush(instruction, 0xEE, reg, 0xEE)
            end)
        end
    end

    describe("PHA", _newPushDescribeBlock(m.PHA, "A"))
    describe("PHP", _newPushDescribeBlock(m.PHP, "STATUS"))


    local function _testPull(instruction, oldSp, reg, val)
        local regs, mem = c.Regs(), c.Mem()

        mem.Write(0x0100 + _u8(oldSp + 1), val)
        regs.SP = oldSp

        if reg == "STATUS" then
            -- Break flag and bit 5 ignored
            val = BAND(val, 0b11001111)
        end

        c.TestInstructionExecution(instruction, nil, 0)
        expect(regs.SP).to.equal(_u8(oldSp + 1))
        expect(regs[reg]).to.equal(val)
    end

    local function _newPullDescribeBlock(instruction, reg)
        return function()
            it("Computes properly", function()
                _testPull(instruction, 0x00, reg, 0x00)
                _testPull(instruction, 0xFF, reg, 0x00)
                _testPull(instruction, 0x00, reg, 0xFF)
                _testPull(instruction, 0xFF, reg, 0xFF)
                _testPull(instruction, 0xEE, reg, 0xFF)
                _testPull(instruction, 0xEE, reg, 0xEE)
            end)
        end
    end

    describe("PLA", _newPullDescribeBlock(m.PLA, "A"))
    describe("PLP", _newPullDescribeBlock(m.PLP, "STATUS"))
end