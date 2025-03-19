
local inst_root = script.Parent.Parent
local inst_core, inst_nes, inst_api, inst_ui =
    inst_root.Core,
    inst_root.Nes,
    inst_root.API,
    inst_root.UI

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES


local T_CONTROLLER = require(inst_api["Controller.types"])
type ControllerState = T_CONTROLLER.State


local T_DEBUG = require(inst_api["Debug.types"])
type DebugLog = T_DEBUG.DebugLog

local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus
type u16 = T_H.u16
type Peripheral = T_H.Peripheral


local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>
type IEmulation<MapperState,PortState> = T_EMU.IEmulation<MapperState,PortState>
type IO = T_EMU.IO


export type EmulationConfig = {
    CpuDebugger: Peripheral?,
    PpuDebugger: Peripheral?,
    DebugLog: DebugLog?
}


export type RunningEmulationContainer<T> = {
    Emulation: Emulation<T,ControllerState>,
    Clock: (NES) -> ()
}


export type EmulationContext<MapperState> = {
    ScreenBuffer: buffer,
    IEmulation: IEmulation<MapperState,ControllerState>,
    IO: IO,
    RunningEmulation: RunningEmulationContainer<MapperState>?,
}


return {}