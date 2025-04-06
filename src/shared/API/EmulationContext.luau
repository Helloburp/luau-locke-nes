local inst_root = script.Parent.Parent
local inst_api, inst_nes, inst_core = inst_root.API, inst_root.Nes, inst_root.Core

local T = require(inst_api["EmulationContext.types"])
type EmulationContext<T> = T.EmulationContext<T>
type EmulationConfig = T.EmulationConfig
type RunningEmulationContainer<T> = T.RunningEmulationContainer<T>


local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>
type IO = T_EMU.IO
type IEmulation<MapperState,PortState> = T_EMU.IEmulation<MapperState,PortState>

local T_CONTROLLER = require(inst_api["Controller.types"])
type ControllerState = T_CONTROLLER.State
type EInput = T_CONTROLLER.EInput

local Nes = require(inst_nes.NES)
local h = inst_core.Helpers

local Parse = require(inst_api.Parse)
local Emulation = require(inst_api.Emulation)
local Display = require(inst_api.Display)

local C_DISPLAY = require(inst_api["Display.constants"])

local m = {}


function m.NewScreenBuffer()
    return Display.NewDisplayBuffer(C_DISPLAY.RESOLUTIONS.SCREEN)
end


function m.NewIO(
    rom: buffer,
    screenBuffer: buffer,
    _getPort1: (EInput) -> boolean,
    _getPort2: (EInput) -> boolean
)
    return {
        Rom = Parse.FromBuffer(rom),

        Display = {
            OnFrameComplete = function() end,
            ScreenBuffer = screenBuffer,
            COLORS_U32 = C_DISPLAY.COLORS_U32
        },

        GetPort1ButtonDown = _getPort1,
        GetPort2ButtonDown = _getPort2
    }
end


function m.FromIO<T>(io: IO): EmulationContext<T>
    local iEmulation = Emulation.FromIO(io)

    return {
        IEmulation = iEmulation,
        RunningEmulation = nil
    }
end

function m.ReconfigureEmulation<T>(
    context: EmulationContext<T>,
    config: EmulationConfig
)
    if not context.RunningEmulation then return end

    _createAndSetNewRunningEmulation(
        context,
        context.IEmulation.CopyState(context.RunningEmulation.Emulation.State),
        config
    )
end


function m.NewEmulation<T>(
    context: EmulationContext<T>,
    state: EmulationState<T,ControllerState>?,
    config: EmulationConfig?
)
    local newRunningEmulation = _createAndSetNewRunningEmulation(
        context,
        state or context.IEmulation.NewState(),
        config or {}
    )

    if not state then
        Nes.Reset(newRunningEmulation.Emulation.Nes)
    end
end


function _configureNewEmulation_Return_Clock<T>(
    emulation: Emulation<T,ControllerState>,
    config: EmulationConfig
): (number) -> ()
    local myNes = emulation.Nes
    if config.CpuDebugger then
        h.MapPeripheral(myNes.CpuBus, nil, config.CpuDebugger)
    end
    if config.PpuDebugger then
        h.MapPeripheral(myNes.PpuBus, nil, config.PpuDebugger)
    end

    local _myClock =
        if config.DebugLog then error("Unimplemented") -- API.Debug.LogClock(Nes.Clock, config.DebugLog, 5)
        else Nes.NewClosure(myNes).ClockCycles

    return _myClock
end


function _createAndSetNewRunningEmulation<T>(
    context: EmulationContext<T>,
    state: EmulationState<T,ControllerState>,
    config: EmulationConfig
): RunningEmulationContainer<T>

    local emulation = context.IEmulation.FromState(state)

    local runningEmulation = {
        Emulation = emulation,
        ClockCycles = _configureNewEmulation_Return_Clock(emulation, config)
    }

    context.RunningEmulation = runningEmulation

    return runningEmulation
end


return m