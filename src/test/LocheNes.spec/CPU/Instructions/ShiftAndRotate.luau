--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local h = require(root.Helpers)
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

local LSHIFT, RSHIFT, BAND = bit32.lshift, bit32.rshift, bit32.band

local _u8, _u16 = h.WrapU8, h.WrapU16

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
                c.TestFlag("C", LSHIFT(op, 1) > 255)
            end
        end
        it("8 << 1 = 16 Implied", _newASLTest(8, 16, nil))
        it("128 << 1 = 0 Absolute (C, Z)", _newASLTest(128, 0, 0))
        it("65 << 1 = 130 Absolute (N)", _newASLTest(65, 130, 5))
    end)

    -- No address uses accumulator
    local function _newLsrTest(addr: number?, val)
        if addr then
            c.Mem().Write(addr, val)
        else
            c.Regs().A = val
        end

        c.TestInstructionExecution(m.LSR, addr, 0)

        local result = if addr then c.Mem().Read(addr) else c.Regs().A

        expect(result).to.equal(_u8(RSHIFT(val, 1)))

        c.TestFlag("C", BAND(val, 0x01) > 0)
        c.TestFlag("Z", result == 0)
        c.TestFlag("N", false)
    end

    describe("LSR", function()
        it("Computes properly", function()
            _newLsrTest(nil, 45)
            _newLsrTest(nil, 0)
            _newLsrTest(nil, 0xFF)
            _newLsrTest(0x0000, 0)
            _newLsrTest(0x0000, 0xFF)
            _newLsrTest(0xFFFF, 0xFF)
        end)
    end)


    local function _rotateTest(
        instruction, addr: number?, val, shouldRotateLeft, oldCarry
    )
        c.SetFlag("C", oldCarry)
        if addr then
            c.Mem().Write(addr, val)
        else
            c.Regs().A = val
        end

        local expectedResult = if shouldRotateLeft
            then _u8(RSHIFT(val, 1)) + (if oldCarry then 1 else 0) * 2^7
            else _u8(LSHIFT(val, 1)) + (if oldCarry then 1 else 0)

        local expectedCarry = if shouldRotateLeft
            then h.GetBit(val, 7)
            else h.GetBit(val, 0)

        c.TestInstructionExecution(instruction, addr, 0)
        local result = if addr then c.Mem().Read(addr) else c.Regs().A

        expect(result).to.equal(expectedResult)
        c.TestFlag("C", expectedCarry)
        c.TestZeroAndNegative(result)
    end

    local function _newRotateDescribeBlock(instruction, shouldRotateLeft)
        return function()
            it("Computes correctly: Old carry set", function()
                _rotateTest(instruction, nil, 0xFF, shouldRotateLeft, true)
                _rotateTest(instruction, nil, 0x01, shouldRotateLeft, true)
                _rotateTest(instruction, nil, 0x8F, shouldRotateLeft, true)
                _rotateTest(instruction, nil, 0x03, shouldRotateLeft, true)
                _rotateTest(instruction, 0x0000, 0xFF, shouldRotateLeft, true)
                _rotateTest(instruction, 0x0000, 0x01, shouldRotateLeft, true)
                _rotateTest(instruction, 0x0000, 0x8F, shouldRotateLeft, true)
                _rotateTest(instruction, 0x0000, 0x03, shouldRotateLeft, true)
            end)
            it("Computes correctly: Old carry not set", function()
                _rotateTest(instruction, nil, 0xFF, shouldRotateLeft, false)
                _rotateTest(instruction, nil, 0x01, shouldRotateLeft, false)
                _rotateTest(instruction, nil, 0x8F, shouldRotateLeft, false)
                _rotateTest(instruction, nil, 0x03, shouldRotateLeft, false)
                _rotateTest(instruction, 0x0000, 0xFF, shouldRotateLeft, false)
                _rotateTest(instruction, 0x0000, 0x01, shouldRotateLeft, false)
                _rotateTest(instruction, 0x0000, 0x8F, shouldRotateLeft, false)
                _rotateTest(instruction, 0x0000, 0x03, shouldRotateLeft, false)
            end)
        end
    end

    describe("ROL", _newRotateDescribeBlock(m.ROL, true))
    describe("ROR", _newRotateDescribeBlock(m.ROR, false))
end