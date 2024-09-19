--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Shared

local m = require(inst_root.Log)
local h = require(inst_root.Helpers)

-- local LOGFILE = require(script.Parent["nestest.log"])
local LOGFILE = [[
C000  4C F5 C5  JMP $C5F5                       A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 21 CYC:7
C5F5  A2 00     LDX #$00                        A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 30 CYC:10
C5F7  86 00     STX $00 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 36 CYC:12
C5F9  86 10     STX $10 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 45 CYC:15
]]

local LOG_LINE_WITH_ILLEGAL_NOP = "C6BD  04 A9    *NOP $A9 = 00                    A:AA X:97 Y:4E P:EF SP:F9 PPU:128, 89 CYC:14579"

return function()
    it("Generates PC logs as expected", function()
        local mem = h.NewBus()
        mem.Write(0x0000, 0x4C)
        mem.Write(0x0001, 0xF5)
        mem.Write(0x0002, 0xC5)
        local log = m.GetLogPc(0x0000, mem)
        expect(log).to.equal("0000  4C F5 C5")
    end)

    it("Handles illegal NOPS as expected", function()
        local breakdown = m.BreakdownLog(LOG_LINE_WITH_ILLEGAL_NOP)
        expect(breakdown.PC).to.equal("C6BD  04 A9")
    end)

    it("Generates register logs as expected", function()
        local regs = h.NewRegisters()
        regs.STATUS = 0x24
        regs.SP = 0xFD
        local log = m.GetLogRegs(regs)
        expect(log).to.equal("A:00 X:00 Y:00 P:24 SP:FD")
    end)

    it("Generates cycle logs as expected", function()
        local log = m.GetLogCycles(5)
        expect(log).to.equal("CYC:5")
        log = m.GetLogCycles(500)
        expect(log).to.equal("CYC:500")
    end)

    it("Breaks down logs as expected: 3 bytes", function()
        local breakdown = m.BreakdownLog(
            "C000  4C F5 C5  JMP $C5F5                       A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 21 CYC:7"
        )
        expect(breakdown.PC).to.equal("C000  4C F5 C5")
        expect(breakdown.Registers).to.equal("A:00 X:00 Y:00 P:24 SP:FD")
        expect(breakdown.Cycles).to.equal("CYC:7")
    end)

    it("Breaks down logs as expected: 2 bytes", function()
        local breakdown = m.BreakdownLog(
            "C5F5  A2 00     LDX #$00                        A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 30 CYC:10"
        )
        expect(breakdown.PC).to.equal("C5F5  A2 00")
        expect(breakdown.Registers).to.equal("A:00 X:00 Y:00 P:24 SP:FD")
        expect(breakdown.Cycles).to.equal("CYC:10")
    end)

    it("Breaks down logs as expected: 1 byte", function()
        local breakdown = m.BreakdownLog(
            "C72D  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0, 81 CYC:27"
        )
        expect(breakdown.PC).to.equal("C72D  EA")
        expect(breakdown.Registers).to.equal("A:00 X:00 Y:00 P:26 SP:FB")
        expect(breakdown.Cycles).to.equal("CYC:27")
    end)

    it("Iterates through logfiles as expected", function()
        local iter = m.IterLog(LOGFILE)
        expect(iter()).to.equal(
            "C000  4C F5 C5  JMP $C5F5                       A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 21 CYC:7"
        )
        expect(iter()).to.equal(
            "C5F5  A2 00     LDX #$00                        A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 30 CYC:10"
        )
        expect(iter()).to.equal(
            "C5F7  86 00     STX $00 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 36 CYC:12"
        )
    end)
end