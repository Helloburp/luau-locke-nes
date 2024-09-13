--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local C = require(root._CONSTANTS)

local BAND, LSHIFT, RSHIFT = bit32.band, bit32.lshift, bit32.rshift

local _u8, _u16 = h.WrapU8, h.WrapU16


return function()
    local c = _newCommon(expect)

    --[[ After interrupt state
        Stack:
        - PC-H  (If called from a BRK, PC will leave 1 byte of space for
        - PC-L      a "break mark" and start execution after. So, PC+2.)
        - STATUS (with B flag set)
        - -> SP

        STATUS has the I flag set.
        PC is set to interrupt vector (0xFFFA for IRQ; 0xFFFE for NMI/BRK)
    ]]

    local function _newBreakTest(oldPc, oldStatus, oldStkp, interruptVector)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            local oldStatus = regs.STATUS
            mem.Write(0xFFFE, BAND(interruptVector, 0x00FF))
            mem.Write(0xFFFF, RSHIFT(interruptVector, 8))
            regs.PC = oldPc
            regs.STATUS = oldStatus
            regs.SP = oldStkp

            c.TestInstructionExecution(m.BRK, nil, 0)
            expect(regs.PC).to.equal(interruptVector)

            expect(regs.SP).to.equal(_u8(oldStkp - 3))

            local returnStatus = mem.Read(0x0100 + _u8(regs.SP + 1))
            local returnPc =
                mem.Read(0x0100 + _u8(regs.SP + 2)) +
                LSHIFT(mem.Read(0x0100 + _u8(regs.SP + 3)), 8)
            
            expect(BAND(returnStatus, C.StatusFlagMasks["B"]) > 0).to.be.ok()
            expect(returnPc).to.equal(_u16(oldPc + 2))

            c.TestFlag("I", true)
            c.TestNoUntestedFlagsChanged()
        end
    end

    local function _newReturnFromInterruptTest(
        oldPc, oldStatus, oldStkp,
        stackPc, stackStatus
    )
        local regs, mem = c.Regs(), c.Mem()
        regs.PC, regs.STATUS, regs.SP = oldPc, oldStatus, oldStkp
        mem.Write(0x0100 + _u8(oldStkp + 1), stackStatus)
        mem.Write(0x0100 + _u8(oldStkp + 2), BAND(stackPc, 0x00FF))
        mem.Write(0x0100 + _u8(oldStkp + 3), RSHIFT(stackPc, 8))

        c.TestInstructionExecution(m.RTI, 0, 0)
        c.TestFlag("N", h.GetFlag("N", stackStatus))
        c.TestFlag("Z", h.GetFlag("Z", stackStatus))
        c.TestFlag("C", h.GetFlag("C", stackStatus))
        c.TestFlag("I", h.GetFlag("I", stackStatus))
        c.TestFlag("D", h.GetFlag("D", stackStatus))
        c.TestFlag("V", h.GetFlag("V", stackStatus))
        expect(regs.PC).to.equal(stackPc)

        c.TestFlag("B", false)
    end

    describe("BRK", function()
        it("Executes as expected", function()
            _newBreakTest(0x0000, 0x00, 0xFF, 0xEEEE)()
            _newBreakTest(0x00FF, 0x01, 0x00, 0xEEEE)()
            _newBreakTest(0x0045, 0x03, 0x54, 0xDDDD)()
        end)
    end)

    describe("RTI", function()
        it("Executes as expected", function()
            _newReturnFromInterruptTest(
                0x0000, 0x00, 0x00,
                0xEEEE, 0xFF
            )
            _newReturnFromInterruptTest(
                0x0000, 0x00, 0x00,
                0xEEEE, 0x00
            )
            _newReturnFromInterruptTest(
                0x0000, 0x00, 0x00,
                0xEEEE, 0xEE
            )
            _newReturnFromInterruptTest(
                0xEEEE, 0x00, 0x00,
                0xDDDD, 0xEE
            )
            _newReturnFromInterruptTest(
                0xEEEE, 0x03, 0x00,
                0xDDDD, 0xEE
            )
            _newReturnFromInterruptTest(
                0xEEEE, 0x03, 0xDE,
                0xDDDD, 0xEE
            )
        end)
    end)

end