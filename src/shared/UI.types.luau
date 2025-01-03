local inst_root = script.Parent
local inst_core, inst_nes, inst_api =
    inst_root.Core,
    inst_root.Nes,
    inst_root.API

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES
type Display = T_NES.Display

local T_CONTROLLER = require(inst_api["Controller.types"])
type EInput = T_CONTROLLER.EInput
type ControllerState = T_CONTROLLER.State


local T_DEBUG = require(inst_api["Debug.types"])
type DebugLog = T_DEBUG.DebugLog
type Debugger = T_DEBUG.Debugger

local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus

local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>
type IEmulation<MapperState,PortState> = T_EMU.IEmulation<MapperState,PortState>


type IO = T_EMU.IO


export type IrisState<T> = any

export type IrisControlledRenderBuffer = {
    Buffer: buffer,
    Image: EditableImage,
    Content: Content,
    State: IrisState<boolean>,

    Render: () -> (),
    RenderIfState: () -> ()
}

export type IrisHook = {
    Iris: () -> (),
    Destroy: () -> (),
    CpuDebugger: Debugger,
    PpuDebugger: Debugger,
    Nes: NES,
    Renderers: {
        Screen: IrisControlledRenderBuffer,
        PatternTables: {IrisControlledRenderBuffer},
        Nametables: {IrisControlledRenderBuffer},
        Palette: IrisControlledRenderBuffer
    },
    WindowStates: {
        PpuViewer: IrisState<boolean>,
        Screen: IrisState<boolean>,
        Execution: IrisState<boolean>
    },

    RunningState: {
        Running: boolean,
        BreakComment: string,
        ClockSpeedState: IrisState<number>
    }
}


export type EmulationContext<MapperState> = {
    ScreenBuffer: buffer,
    IO: IO,
    IEmulation: IEmulation<MapperState,ControllerState>,
    Emulation: Emulation<MapperState,ControllerState>
}

return {}