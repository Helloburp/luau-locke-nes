local T = require(script.Parent["Log.types"])
type LogBreakdown = T.LogBreakdown


local T_CPU = require(script.Parent["CPU.types"])
type CPU = T_CPU.CPU
type Regs = T_CPU.Registers

local h = require(script.Parent.Helpers)

local T_H = require(script.Parent["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Bus = T_H.Bus

local T_PPU = require(script.Parent["PPU.types"])
type PPU = T_PPU.PPU


local C_CPU = require(script.Parent["CPU.constants"])
local Ppu = require(script.Parent.PPU)


local _u8, _u16 = h.WrapU8, h.WrapU16

local m = {}

function m.GetLogPc(pc: u16, mem: Bus): string
    local opcode = mem.Read(pc)
    local opcodeData = C_CPU.SlowOpcodeLookup[opcode + 1]
    local bytes = C_CPU.BytesPerAddressingMode[opcodeData.AddressingMode]
    local arg1 = mem.Read(_u16(pc + 1))
    local arg2 = mem.Read(_u16(pc + 2))
    
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

function m.GetLogPpu(cyclesThisFrame: number)
    local dot, scanline =
        Ppu.GetDotInFrame(cyclesThisFrame),
        Ppu.GetScanlineInFrame(cyclesThisFrame)
    return string.format("PPU:%3d,%3d", scanline, dot)
end

function m.BreakdownLog(log: string): LogBreakdown
    local pc =  string.match(log, "(%x%x%x%x.-%x)%s-%*?%a%a%a")
    local registers = string.match(log, "(A:%x%x.-)%s-PPU")
    local ppu = string.match(log, "(PPU:%s-%d+,%s-%d+)")
    local cycles = string.match(log, "(CYC:%d+)")
    assert(pc and registers and ppu and cycles, "Improperly formatted log.")

    return {
        PC = pc, Registers = registers, Ppu = ppu, Cycles = cycles
    }
end

function m.IterLog(logfile: string)
    return string.gmatch(logfile, "%x.-CYC:%d+")
end

function m.IterLogMultiple(logfiles: {string}): () -> (string?)
    local logfileIndex = 1
    local iter = m.IterLog(logfiles[logfileIndex])

    local function _getNextLog()
        if logfileIndex > #logfiles then return nil end

        local nextLog = iter()
        if not nextLog then
            logfileIndex += 1
            if logfileIndex > #logfiles then return nil end

            iter = m.IterLog(logfiles[logfileIndex])
            nextLog = iter()
        end

        return nextLog
    end

    return _getNextLog
end


function m.CompareCpuLog(
    cpu: CPU, cpuBus: Bus, goodLog: LogBreakdown
): (boolean, string?)
    local pcLog, regLog, cycLog =
        m.GetLogPc(cpu.Registers.PC, cpuBus),
        m.GetLogRegs(cpu.Registers),
        m.GetLogCycles(cpu.ExecutionState.Clock)

    if pcLog ~= goodLog.PC then 
        return false, `Expected PC to be {goodLog.PC}, got {pcLog} instead.`
    end
    
    if regLog ~= goodLog.Registers then
        return false, `Expected registers to be {goodLog.Registers}, got {regLog} instead.`
    end
    if cycLog ~= goodLog.Cycles then
        return false, `Expected cycles to be {goodLog.Cycles}, got {cycLog} instead.`
    end

    return true
end

function m.ComparePpuLog(
    ppu: PPU, goodPpuLog: string
): (boolean, string?)
    local ppuLog = m.GetLogPpu(ppu.ExecutionState.Cycles)
    if ppuLog ~= goodPpuLog then
        return false, `Expected Ppu to be {goodPpuLog}, got {ppuLog} instead.`
    end

    return true
end


return m