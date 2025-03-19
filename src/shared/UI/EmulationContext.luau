local inst_root = script.Parent.Parent
local inst_core, inst_nes, inst_api, inst_ui =
    inst_root.Core,
    inst_root.Nes,
    inst_root.API,
    inst_root.UI

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES
type Display = T_NES.Display


local T_CONTROLLER = require(inst_api["Controller.types"])
type EInput = T_CONTROLLER.EInput
type ControllerState = T_CONTROLLER.State


local T_DEBUG = require(inst_api["Debug.types"])
type DebugLog = T_DEBUG.DebugLog


local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus
type Peripheral = T_H.Peripheral


local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>
type IO = T_EMU.IO
type IEmulation<MapperState,PortState> = T_EMU.IEmulation<MapperState,PortState>


local T_EMUCONTEXT = require(inst_ui["EmulationContext.types"])
type EmulationContext<MapperState> = T_EMUCONTEXT.EmulationContext<MapperState>
type RunningEmulationContainer<T> = T_EMUCONTEXT.RunningEmulationContainer<T>
type EmulationConfig = T_EMUCONTEXT.EmulationConfig



local Nes = require(inst_nes.NES)

local h = require(inst_core.Helpers)

local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local API = {
    Display = require(inst_api.Display),
    Debug = require(inst_api.Debug),
    Log = require(inst_api.Log),
    Emulation = require(inst_api.Emulation),
    Parse = require(inst_api.Parse)
}

local UserInputService = game:GetService("UserInputService")

local KEYCODES_BY_INPUT: {[EInput]: Enum.KeyCode} = {
    ["A"]       = Enum.KeyCode.J,
    ["B"]       = Enum.KeyCode.K,
    ["Select"]  = Enum.KeyCode.LeftShift,
    ["Start"]   = Enum.KeyCode.Return,
    ["Up"]      = Enum.KeyCode.W,
    ["Down"]    = Enum.KeyCode.S,
    ["Left"]    = Enum.KeyCode.A,
    ["Right"]   = Enum.KeyCode.D,
}


local m = {}


function m.FromRom<T>(rom: buffer): EmulationContext<T>
    local screenBuffer = _newScreenBuffer()
    local io = _newIO(rom, screenBuffer)
    local iEmulation = API.Emulation.FromIO(io)

    return {
        ScreenBuffer = screenBuffer,
        IEmulation = iEmulation,
        IO = io
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
): (NES) -> ()
    local myNes = emulation.Nes
    if config.CpuDebugger then
        h.MapPeripheral(myNes.CpuBus, nil, config.CpuDebugger)
    end
    if config.PpuDebugger then
        h.MapPeripheral(myNes.PpuBus, nil, config.PpuDebugger)
    end

    local _myClock =
        if config.DebugLog then API.Debug.LogClock(Nes.Clock, config.DebugLog, 5)
        else Nes.Clock

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
        Clock = _configureNewEmulation_Return_Clock(
            emulation, config
        )
    }

    context.RunningEmulation = runningEmulation

    return runningEmulation
end


function _newIO(rom: buffer, screenBuffer: buffer): IO
    return {
        Rom = API.Parse.FromBuffer(rom),
        Display = _newBufferDisplayInterface(screenBuffer),
        GetPort1ButtonDown = function(eInput: EInput)
            return UserInputService:IsKeyDown(KEYCODES_BY_INPUT[eInput])
        end,
        GetPort2ButtonDown = function()
            return false
        end
    }
end

function _newScreenBuffer()
    return API.Display.NewDisplayBuffer(SIZES.SCREEN)
end


function _newBufferDisplayInterface(b: buffer): Display
    return {
        OnFrameComplete = function() end,
        SetPixelForPpuCycle = API.Display.NewPlacePixelInFrame(
            API.Display.NewWriteColorValueToBuffer(b)
        ),
    }
end


return m