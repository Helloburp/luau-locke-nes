--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Parent.Shared
local inst_core, inst_components = inst_root.Core, inst_root.Components
local m = require(inst_components.CPU.Instructions)
local h = require(inst_core.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

local _u8, _u16 = h.WrapU8, h.WrapU16

local BAND, RSHIFT, LSHIFT = bit32.band, bit32.rshift, bit32.lshift

return function()
    local c = _newCommon(expect)
    
    local function _newJumpTest(toAddr, fromAddr)
        local regs, mem = c.Regs(), c.Mem()
        regs.PC = _u16(fromAddr - 1)

        mem.Write(fromAddr, BAND(toAddr, 0x00FF))
        mem.Write(_u16(fromAddr + 1), RSHIFT(toAddr, 8))
        c.TestInstructionExecution(m.JMP, fromAddr, 0)

        -- Yeah, it's weird... but it literally does just take the
        -- provided address
        expect(regs.PC).to.equal(fromAddr)
    end

    local function _newJsrTest(oldStkp, toAddr, fromAddr)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            mem.Write(fromAddr, BAND(toAddr, 0x00FF))
            mem.Write(_u16(fromAddr + 1), RSHIFT(toAddr, 8))
            regs.PC = _u16(fromAddr - 1)
            regs.SP = oldStkp

            local oldPc = regs.PC

            c.TestInstructionExecution(m.JSR, fromAddr, 0)
            expect(regs.PC).to.equal(fromAddr)
            expect(regs.SP).to.equal(_u8(oldStkp - 2))

            local returnPc =
                mem.Read(0x0100 + _u8(regs.SP + 1)) +
                LSHIFT(mem.Read(0x0100 + _u8(regs.SP + 2)), 8)
            
            -- It's weird, but it really is -1 of what it should be since
            -- it gets incremented when pulled off the stack.
            expect(returnPc).to.equal(oldPc - 1)

            c.TestNoUntestedFlagsChanged()
        end
    end

    local function _newRtsTest(oldPc, oldStkp, stackAddr)
        return function()
            local regs, mem = c.Regs(), c.Mem()
            mem.Write(0x0100 + _u8(oldStkp + 1), BAND(stackAddr, 0x00FF))
            mem.Write(0x0100 + _u8(oldStkp + 2), RSHIFT(stackAddr, 8))
            regs.PC = oldPc
            regs.SP = oldStkp

            c.TestInstructionExecution(m.RTS, 0, 0)

            -- Important: RTS increments the address when pulling.
            expect(regs.PC).to.equal(_u16(stackAddr + 1))
            expect(regs.SP).to.equal(_u8(oldStkp + 2))

            c.TestNoUntestedFlagsChanged()
        end
    end

    describe("JMP", function()
        it("Jumps properly", function()
            _newJumpTest(0x4000, 0x0000)
            _newJumpTest(0x4000, 0x0100)
            _newJumpTest(0x4000, 0x0100)
            _newJumpTest(0xFFFF, 0x0100)
        end)
    end)
    describe("JSR", function()
        it("Jumps properly", function()
            _newJsrTest(0xFF, 0x00FF, 0xFFFF)()
            _newJsrTest(0xFF, 0x00FF, 0x0105)()
            _newJsrTest(0x05, 0xEEEE, 0x0104)()
        end)
    end)
    describe("RTS", function()
        it("Returns properly", function()
            _newRtsTest(0x0000, 0x00, 0xFFFF)()
            _newRtsTest(0xFFFF, 0x00, 0xFFFF)()
            _newRtsTest(0x0000, 0xFF, 0xFFFF)()
            _newRtsTest(0x0000, 0xFF, 0xEEEE)()
        end)
    end)
end