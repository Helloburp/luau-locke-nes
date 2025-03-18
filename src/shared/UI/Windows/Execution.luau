--!optimize 2

local inst_root = script.Parent.Parent.Parent
local inst_nes, inst_api, inst_auxiliary =
    inst_root.Nes,
    inst_root.API,
    inst_root.Auxiliary

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES

local T_DEBUG = require(inst_api["Debug.types"])
type DebugLog = T_DEBUG.DebugLog

local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>

local T_UI = require(inst_root["UI.types"])
type EmulationContext<MapperState> = T_UI.EmulationContext<MapperState>
type RunningState = T_UI.RunningState
type BenchmarkingState = T_UI.BenchmarkingState


local Iris = require(game.ReplicatedStorage.Packages.Iris)

local API = {
    Log = require(inst_api.Log),
    Debug = require(inst_api.Debug),
    Emulation = require(inst_api.Emulation)
}

local Benchmarking = require(inst_auxiliary.Benchmarking)

local C_NES = require(inst_nes["NES.constants"])

local FONT_COLORS = {
    Green   = "rgb(127,255,127)",
    Red     = "rgb(255,127,127)"
}


local m = {}


function m.Render<T>(
    context: EmulationContext<T>,
    myLog: DebugLog,
    state: RunningState,
    emulationSpeedState: BenchmarkingState,
    executionSpeedState: BenchmarkingState,
    _myClock: (NES) -> ()
)
    local myNes = context.Emulation.Nes

    Iris.Text{(function()
        local logTexts = {}
        for i = 1, #myLog.PCHistory do
            local pc = myLog.PCHistory[i]
            local isCurrentCommand = i == #myLog.PCHistory - 1
            local prefixText = if isCurrentCommand then "> " else "  "

            local text = string.format(
                "%s%-20s%-20s", prefixText,
                API.Log.GetLogPc(pc, myNes.CpuBus),
                API.Log.GetAssemblyLogPc(pc, myNes.CpuBus)
            )
            if isCurrentCommand then
                text = `<font color="rgb(127,255,127)">{text}</font>`
            end
            table.insert(logTexts, text)
        end

        return table.concat(logTexts, "\n")
    end)(), [Iris.Args.Text.RichText] = true}

    Iris.Text(API.Log.GetLogRegs(myNes.Cpu.State.Registers))
    Iris.Text(API.Log.GetPpuRegLog(myNes.Ppu.State.Registers))
    Iris.Text(API.Log.GetPpuInternalRegLog(myNes.Ppu.State.InternalRegisters))

    Iris.SameLine()
    do
        if Iris.Button(
            if state.Running then "Pause" else "Continue"
        ).clicked() then
            state.BreakComment = ""
            state.Running = not state.Running
        end
        if Iris.Button("Step").clicked() then
            API.Debug.StepCpuInstruction(myNes, _myClock)
        end
        if Iris.Button("Step to VBlank").clicked() then
            API.Debug.StepToVBlank(myNes, _myClock)
        end
    end
    Iris.End()
    Iris.InputNum({"Clock speed (hz)", 500}, {number =  state.ClockSpeedState})
    Iris.SameLine()
    if Iris.Button("Realtime").clicked() then
        state.ClockSpeedState:set(C_NES.MASTER_CLOCK_HZ_NTSC/60/4)
    end
    if Iris.Button("1/2 Realtime").clicked() then
        state.ClockSpeedState:set(math.floor(C_NES.MASTER_CLOCK_HZ_NTSC/60/2/4))
    end
    if Iris.Button("1/8 Realtime").clicked() then
        state.ClockSpeedState:set(math.floor(C_NES.MASTER_CLOCK_HZ_NTSC/60/8/4))
    end
    Iris.End()
    if Iris.Button("Print State").clicked() then
        print(API.Emulation.SerializeState(context.Emulation.State))
    end
    Iris.Text{
        API.Log.GetInputLog(context.IO.GetPort1ButtonDown),
        [Iris.Args.Text.RichText] = true
    }
    if state.BreakComment ~= "" then
        Iris.Text{
            `Breakpoint hit: {state.BreakComment}`,
            [Iris.Args.Text.Color] = Color3.fromRGB(255,127,127)
        }
    end
    Iris.Separator()
    _performance(state, emulationSpeedState, executionSpeedState, {})
end


function _performance(
    runningState: RunningState,
    emulationSpeed: BenchmarkingState,
    executionState: BenchmarkingState,
    comparison: {
        EmulationSpeed: number?,
        ExecutionSpeed: number?
    }
)

    local expectedEmulationSpeed = runningState.ClockSpeedState:get()/(C_NES.MASTER_CLOCK_HZ_NTSC/60/4)

    local averageEmulationSpeed = Benchmarking.Average(emulationSpeed.SpeedList)
    local averageExecutionSpeed = Benchmarking.Average(executionState.SpeedList)

    Iris.Text(
        `Emulation Speed: {_comparePercentages(
            averageEmulationSpeed, comparison.EmulationSpeed or expectedEmulationSpeed
        )}`
    )
    Iris.Text(
        `Execution Speed: {_comparePercentages(
            averageExecutionSpeed, comparison.ExecutionSpeed or 1
        )}`
    )
end


function _comparePercentages(baseline: number, comparison: number): string
    if comparison == 0 then return "div0" end

    local delta = baseline/comparison
    return string.format(
        `%6.2f%% (target: %6.2f%%) ({if delta >= 1 then "+" else "-"}%6.2f%%)`,
        baseline*100, comparison*100, math.abs((1 - delta))*100
    )
end


return m