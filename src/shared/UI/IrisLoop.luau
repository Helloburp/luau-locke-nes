--!optimize 2

local inst_root = script.Parent.Parent
local inst_core, inst_nes, inst_api, inst_auxiliary, inst_ui =
    inst_root.Core,
    inst_root.Nes,
    inst_root.API,
    inst_root.Auxiliary,
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


local T_EMUCONTEXT = require(inst_api["EmulationContext.types"])
type EmulationContext<MapperState> = T_EMUCONTEXT.EmulationContext<MapperState>
type RunningEmulationContainer<T> = T_EMUCONTEXT.RunningEmulationContainer<T>
type EmulationConfig = T_EMUCONTEXT.EmulationConfig


local T = require(inst_ui["IrisLoop.types"])
type BenchmarkingState = T.BenchmarkingState
type RunningState = T.RunningState
type State = T.State
type DebugConfig = T.DebugConfig


local Windows = {
    Execution = require(inst_ui.Windows.Execution),
    PpuViewer = require(inst_ui.Windows.PpuViewer),
    Screen = require(inst_ui.Windows.Screen),
    Cartridge = require(inst_ui.Windows.Cartridge)
}

local Ui = {
    Elements = require(inst_ui.Elements)
}


local Iris = require(game.ReplicatedStorage.Packages.Iris)

local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local C_NES = require(inst_nes["NES.constants"])

local API = {
    Display = require(inst_api.Display),
    Debug = require(inst_api.Debug),
    Log = require(inst_api.Log),
    Emulation = require(inst_api.Emulation),
    Parse = require(inst_api.Parse)
}

local Benchmarking = require(inst_auxiliary.Benchmarking)

local BENCHMARKING_SAMPLE_SIZE = 60


local m = {}


function m.State(): State
    local screenImage = API.Display.EditableImageFromSize(SIZES.SCREEN)
    return {
        ScreenImage = screenImage,
        ScreenContent = Content.fromObject(screenImage),

        DebugLog = API.Debug.NewLog(),

        RunningState = {
            Running = false,
            BreakComment = "",
            ClockSpeedState = Iris.State(C_NES.MASTER_CLOCK_HZ_NTSC/60/8/4),
        },
        WindowStates = {
            PpuViewer = Iris.State(false),
            Screen = Iris.State(false),
            Execution = Iris.State(false),
            Cartridge = Iris.State(false)
        },

        EmulationSpeedState = {
            SpeedList = {},
            Outliers = NumberRange.new(0, 0),
            SampleSize = BENCHMARKING_SAMPLE_SIZE
        },
        ExecutionSpeedState = {
            SpeedList = {},
            Outliers = NumberRange.new(0, 0),
            SampleSize = BENCHMARKING_SAMPLE_SIZE
        },
        PpuViewer = Windows.PpuViewer.State()
    }
end


function m.ClockFrame<T>(
    emulationContainer: RunningEmulationContainer<T>,
    uiState: State,
    dt: number
)

    _clockFrame(
        uiState,
        emulationContainer.Emulation.Nes,
        emulationContainer.ClockCycles,
        dt
    )
end


function m.RenderFrame<T>(screenBuffer: buffer, uiState: State)
    API.Display.WriteBufferToImage(screenBuffer, uiState.ScreenImage)
end


function m.EmulationConfig(uiState: State, debugConfig: DebugConfig?): EmulationConfig
    return if debugConfig
        then _emulationConfigFromDebugConfig(uiState, debugConfig)
        else {}
end


function m.Render<T>(emulationContext: EmulationContext<T>, uiState: State, io: IO)
    Ui.Elements.WindowControl(uiState.WindowStates)
    Ui.Elements.StateWindow(
        {"PPU Viewer"}, Vector2.new(500, 700), uiState.WindowStates.PpuViewer,
        function()
            local nes = emulationContext.RunningEmulation
                and emulationContext.RunningEmulation.Emulation.Nes
                or nil
            
            if nes then
                Windows.PpuViewer.Refresh(nes, uiState.PpuViewer)
            end
            
            Windows.PpuViewer.Render(
                uiState.PpuViewer,
                {
                    OAM = nes and API.Log.GetFullOAMLog(nes.State.Ppu.OAM) or "",
                    SecondaryOAM = nes
                        and API.Log.GetSecondaryOAMLog(nes.State.Ppu.SecondaryOAM)
                        or ""
                }
            )
        end
    )
    Ui.Elements.StateWindow(
        {"Screen"}, SIZES.SCREEN, uiState.WindowStates.Screen,
        function()
            Windows.Screen.Render(uiState.ScreenContent)
        end
    )
    Ui.Elements.StateWindow(
        {"Execution"}, nil, uiState.WindowStates.Execution,
        function()
            Windows.Execution.Render(emulationContext, uiState, io)
        end
    )
    Ui.Elements.StateWindow(
        {"Cartridge"}, nil, uiState.WindowStates.Cartridge,
        function()
            Windows.Cartridge.Render(emulationContext, io)
        end
    )
end


function _emulationConfigFromDebugConfig(uiState: State, debugConfig: DebugConfig): EmulationConfig
    return {
        CpuDebugger = API.Debug.Debugger{
            BreakCallback = function(context)
                uiState.RunningState.Running = false
                uiState.RunningState.BreakComment = `CPU {context}`
            end,

            ReadBreakpointPredicate = debugConfig.BreakIfCpuRead,
            WriteBreakpointPredicate = debugConfig.BreakIfCpuWrite
        },

        PpuDebugger = API.Debug.Debugger{
            BreakCallback = function(context)
                uiState.RunningState.Running = false
                uiState.RunningState.BreakComment = `PPU {context}`
            end,

            ReadBreakpointPredicate = debugConfig.BreakIfPpuRead,
            WriteBreakpointPredicate = debugConfig.BreakIfPpuWrite
        },
        DebugLog = uiState.DebugLog
    }
end


function _clockFrame<T>(
    uiState: State,
    myNes: NES,
    _clockCycles: (number) -> (),
    dt: number
)
    local runningState, emulationSpeedState, executionSpeedState =
        uiState.RunningState,
        uiState.EmulationSpeedState,
        uiState.ExecutionSpeedState

    if not runningState.Running then return end
    local cycles = runningState.ClockSpeedState:get()

    -- Whether or nor parallelization seems to help is kind of a wash, but I'm gonna keep it
    -- enabled because it's a cool feature B)
    task.desynchronize()
    local tic = os.clock()

    _clockCycles(math.floor(cycles))

    local toc = os.clock()
    task.synchronize()

    local emulationSpeed = Benchmarking.Speed(cycles, dt, C_NES.MASTER_CLOCK_HZ_NTSC/4)
    local executionSpeed = Benchmarking.Speed(cycles, toc - tic, C_NES.MASTER_CLOCK_HZ_NTSC/4)

    Benchmarking.RollingState(
        emulationSpeedState.SpeedList, emulationSpeedState.SampleSize, emulationSpeed
    )
    emulationSpeedState.Outliers = Benchmarking.Outliers(
        emulationSpeedState.Outliers, emulationSpeed
    )

    Benchmarking.RollingState(
        executionSpeedState.SpeedList, executionSpeedState.SampleSize, executionSpeed
    )
    executionSpeedState.Outliers = Benchmarking.Outliers(
        executionSpeedState.Outliers, executionSpeed
    )
end


return m