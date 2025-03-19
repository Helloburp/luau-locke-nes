
local inst_root = script.Parent.Parent
local inst_core, inst_api, inst_ui =
    inst_root.Core,
    inst_root.API,
    inst_root.UI

local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus
type u16 = T_H.u16
type Peripheral = T_H.Peripheral

local T_DEBUG = require(inst_api["Debug.types"])
type DebugLog = T_DEBUG.DebugLog


local T_ELEMENTS = require(inst_ui["Elements.types"])
type IrisState<T> = T_ELEMENTS.IrisState<T>

local T_PPUVIEWER = require(inst_ui.Windows["PpuViewer.types"])


export type State = {
    ScreenImage: EditableImage,
    ScreenContent: Content,
    DebugLog: DebugLog,

    WindowStates: {
        PpuViewer: IrisState<boolean>,
        Screen: IrisState<boolean>,
        Execution: IrisState<boolean>,
        Cartridge: IrisState<boolean>
    },

    RunningState: RunningState,
    
    EmulationSpeedState: BenchmarkingState,
    ExecutionSpeedState: BenchmarkingState,

    PpuViewer: T_PPUVIEWER.State,
}

export type RunningState = {
    Running: boolean,
    BreakComment: string,
    ClockSpeedState: IrisState<number>,
}


export type BenchmarkingState = {
    Outliers: NumberRange,
    SpeedList: {},
    SampleSize: number,
    Comparison: number?
}


export type DebugConfig = {
    BreakIfCpuRead: ((u16) -> boolean)?,
    BreakIfCpuWrite: ((u16) -> boolean)?,
    BreakIfPpuRead: ((u16) -> boolean)?,
    BreakIfPpuWrite: ((u16) -> boolean)?
}


return {}