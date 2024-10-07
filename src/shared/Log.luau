
local T = require(script.Parent["CPU.types"])
local C = require(script.Parent["CPU.constants"])
local h = require(script.Parent.Helpers)
type Regs = T.Registers

local T_H = require(script.Parent["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Mem = T_H.Bus

local _u8, _u16 = h.WrapU8, h.WrapU16

local m = {}

function m.GetLogPc(pc: u16, mem: Mem): string
    local opcode = mem.Read(pc)
    local opcodeData = C.SlowOpcodeLookup[opcode + 1]
    local bytes = C.BytesPerAddressingMode[opcodeData.AddressingMode]
    local arg1 = mem.Read(_u16(pc + 1))
    local arg2 = mem.Read(_u16(pc + 2))
    

    -- return string.format(
    --     "%-5.4X %.2X %.2X %.2X",
    --     pc, mem.Read(pc),
    --     mem.Read(_u16(pc + 1)),
    --     mem.Read(_u16(pc + 2))
    -- )
    return string.format(
        "%-6.4X%.2X%s%s",
        pc, opcode,
        if bytes > 0 then string.format(" %.2X", arg1) else "",
        if bytes > 1 then string.format(" %.2X", arg2) else ""
    )
end

function _logValue(valName: string, val: u8): string
    return string.format("%s:%.2X", valName, val)
end

function m.GetLogRegs(regs: Regs)
    return string.format(
        "%s %s %s %s %s",
        _logValue("A", regs.A),
        _logValue("X", regs.X),
        _logValue("Y", regs.Y),
        _logValue("P", regs.STATUS),
        _logValue("SP", regs.SP)
    )
end

function m.GetLogCycles(cycles: number)
    return string.format("CYC:%d", cycles)
end

export type LogBreakdown = {
    PC: string,
    Registers: string,
    Cycles: string
}
function m.BreakdownLog(log: string): LogBreakdown
    local pc =  string.match(log, "(%x%x%x%x.-%x)%s-%*?%a%a%a")
    local registers = string.match(log, "(A:%x%x.-)%s-PPU")
    local cycles = string.match(log, "(CYC:%d+)")
    assert(pc and registers and cycles, "Improperly formatted log.")

    return {
        PC = pc, Registers = registers, Cycles = cycles
    }
end

function m.IterLog(logfile: string)
    return string.gmatch(logfile, "%x.-CYC:%d+")
end


return m