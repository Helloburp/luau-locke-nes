
local Log = require(script.Parent.Log)


local T_CPU = require(script.Parent["CPU.types"])
type CPU = T_CPU.CPU

local T_H = require(script.Parent["Helpers.types"])
type Bus = T_H.Bus


local m = {}

function m.CheckCpuLogsEqual(
    cpu: CPU, cpuBus: Bus,
    instructionNumber: number,
    nextLog: string
): (boolean, string?)
    local goodLogBreakdown = Log.BreakdownLog(nextLog)
    local pcLog, regLog, cycLog =
        Log.GetLogPc(cpu.Registers.PC, cpuBus),
        Log.GetLogRegs(cpu.Registers),
        Log.GetLogCycles(cpu.ExecutionState.Clock)

    return pcall(
        Log.AssertCpuLogsEqual, goodLogBreakdown, instructionNumber,
        pcLog, regLog, cycLog
    )
end

return m