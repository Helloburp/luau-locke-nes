--!optimize 2

local inst_root = script.Parent
local inst_core, inst_components, inst_nes, inst_api =
    inst_root.Core,
    inst_root.Components,
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


local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus

local T_EMU = require(inst_api["Emulation.types"])
type Emulation<MapperState,PortState> = T_EMU.Emulation<MapperState,PortState>
type EmulationState<MapperState,PortState> = T_EMU.State<MapperState,PortState>
type IO = T_EMU.IO

local T = require(script.Parent["UI.types"])
type IrisControlledRenderBuffer = T.IrisControlledRenderBuffer
type IrisHook = T.IrisHook
type EmulationContext<MapperState> = T.EmulationContext<MapperState>
type DebugConfig = T.DebugConfig


local Windows = {
    Execution = require(script.Windows.Execution),
    PpuViewer = require(script.Windows.PpuViewer),
    Screen = require(script.Windows.Screen),
    Cartridge = require(script.Windows.Cartridge)
}


local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Nes = require(inst_nes.NES)
local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local C_PPU = require(inst_components["PPU.constants"])
local C_NES = require(inst_nes["NES.constants"])
local h = require(inst_core.Helpers)

local API = {
    Display = require(inst_api.Display),
    Debug = require(inst_api.Debug),
    Log = require(inst_api.Log),
    Emulation = require(inst_api.Emulation),
    Parse = require(inst_api.Parse)
}


local RunService = game:GetService("RunService")
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


function m.FromRom<T>(rom: buffer, state: EmulationState<T,ControllerState>?): EmulationContext<T>
    local screenBuffer = _newScreenBuffer()
    local io = _newIO(rom, screenBuffer)
    local iEmulation = API.Emulation.FromIO(io)
    local myEmulation = iEmulation.FromState(state or iEmulation.NewState())

    if not state then
        Nes.Reset(myEmulation.Nes)
    end

    return {
        ScreenBuffer = screenBuffer,
        IEmulation = iEmulation,
        Emulation = myEmulation,
        IO = io
    }
end


function m.NewIrisHook<T>(context: EmulationContext<T>, debugConfig: DebugConfig): IrisHook
    local myNes = context.Emulation.Nes

    local state = {
        Running = false,
        BreakComment = "",
        ClockSpeedState = Iris.State(C_NES.MASTER_CLOCK_HZ_NTSC/60/8/4)
    }
    
    local windowStates = {
        PpuViewer = Iris.State(false),
        Screen = Iris.State(false),
        Execution = Iris.State(false),
        Cartridge = Iris.State(false)
    }

    local ptStates = {
        [0] = Iris.State(false),
        [1] = Iris.State(false)
    }

    local ntStates = {
        [0] = Iris.State(false),
        [1] = Iris.State(false),
        [2] = Iris.State(false),
        [3] = Iris.State(false),
    }

    local statelyBufferData = {}
    local function _addStatelyRenderBuffer(
        _fn, defaultState, editableImage, displayBuffer
    )
        local result = _newIrisControlledRenderBuffer(
            _fn, defaultState, editableImage, displayBuffer
        )
        table.insert(statelyBufferData, result)
        return result
    end

    local function _getStateByImage(content: Content)
        for _, v in pairs(statelyBufferData) do
            if v.Content ~= content then continue end
            return v.State
        end
        error("Unable to find state for EditableImage!")
    end

    local screen = _addStatelyRenderBuffer(
        API.Display.WriteBufferToImage, windowStates.Screen,
        API.Display.EditableImageFromSize(SIZES.SCREEN), context.ScreenBuffer
    )

    local nametables = (function()
        local t = {}
        for nt = 0, 3 do
            t[nt] = _addStatelyRenderBuffer(
                function(b, image)
                    API.Display.RefreshNametable(
                        b, image, myNes.PpuBus, nt,
                        C_PPU.BITFIELD_UTIL.PpuControl.GetBit(
                            "B", myNes.Ppu.State.Registers.PPUCTRL
                        )
                    )
                end,
                ntStates[nt],
                API.Display.EditableImageFromSize(SIZES.NAMETABLE),
                API.Display.NewDisplayBuffer(SIZES.NAMETABLE)
            )
        end
        return t
    end)()

    local patternTables = (function()
        local t = {}
        for pt = 0, 1 do
            t[pt] = _addStatelyRenderBuffer(
                function(b, image)
                    API.Display.RefreshPatternTable(
                        b, image, myNes.PpuBus, pt == 1
                    )
                end,
                ptStates[pt],
                API.Display.EditableImageFromSize(SIZES.PATTERN_TABLE),
                API.Display.NewDisplayBuffer(SIZES.PATTERN_TABLE)
            )
        end
        return t
    end)()

    local palette = _addStatelyRenderBuffer(
        function(b, image)
            API.Display.RefreshPalette(b, image, myNes.PpuBus)
        end,
        Iris.State(true),
        API.Display.EditableImageFromSize(SIZES.PALETTES),
        API.Display.NewDisplayBuffer(SIZES.PALETTES)
    )


    local CpuDebugger = API.Debug.Debugger{
        BreakCallback = function(context)
            state.Running = false
            state.BreakComment = `CPU {context}`
        end,

        ReadBreakpointPredicate = debugConfig.BreakIfCpuRead,
        WriteBreakpointPredicate = debugConfig.BreakIfCpuWrite
    }

    local PpuDebugger = API.Debug.Debugger{
        BreakCallback = function(context)
            state.Running = false
            state.BreakComment = `PPU {context}`
        end,

        ReadBreakpointPredicate = debugConfig.BreakIfPpuRead,
        WriteBreakpointPredicate = debugConfig.BreakIfPpuWrite
    }

    h.MapPeripheral(myNes.CpuBus, nil, CpuDebugger)
    h.MapPeripheral(myNes.PpuBus, nil, PpuDebugger)

    local myLog = API.Debug.NewLog()
    local _myClock = API.Debug.LogClock(Nes.Clock, myLog, 5)


    local con_heartbeat = RunService.Heartbeat:Connect(function()
        for x = 1, state.ClockSpeedState:get() do
            if not state.Running then continue end
            _myClock(myNes)
        end

        if windowStates.PpuViewer:get() then
            for _, v in pairs(patternTables) do v.RenderIfState() end
            for _, v in pairs(nametables) do v.RenderIfState() end
            palette.RenderIfState()
        end

        screen.RenderIfState()
    end)

    for _, v in pairs(statelyBufferData) do
        v.Render()
    end


    return {
        Iris = function()
            _windowControl(windowStates)
            _stateWindow(
                {"PPU Viewer"}, Vector2.new(500, 700), windowStates.PpuViewer,
                function()
                    Windows.PpuViewer.Render(
                        {
                            patternTables[0].Content, patternTables[1].Content
                        },
                        {
                            nametables[0].Content, nametables[1].Content,
                            nametables[2].Content, nametables[3].Content
                        },
                        palette.Content,
                        {
                            OAM = API.Log.GetFullOAMLog(myNes.Ppu.State.OAM),
                            SecondaryOAM = API.Log.GetSecondaryOAMLog(myNes.Ppu.State.SecondaryOAM)
                        },
                        _getStateByImage
                    )
                end
            )
            _stateWindow(
                {"Screen"}, SIZES.SCREEN, windowStates.Screen,
                function()
                    Windows.Screen.Render(screen.Content)
                end
            )
            _stateWindow(
                {"Execution"}, nil, windowStates.Execution,
                function()
                    Windows.Execution.Render(context, myLog, state, _myClock)
                end
            )
            _stateWindow(
                {"Cartridge"}, nil, windowStates.Cartridge,
                function()
                    Windows.Cartridge.Render(context)
                end
            )
        end,

        Destroy = function()
            con_heartbeat:Disconnect()
            for _, v in pairs(statelyBufferData) do
                v.Image:Destroy()
            end
        end,

        CpuDebugger = CpuDebugger,
        PpuDebugger = PpuDebugger,
        Nes = myNes,
        Renderers = {
            Screen = screen, PatternTables = patternTables,
            Nametables = nametables, Palette = palette
        },
        WindowStates = windowStates,
        RunningState = state
    }
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


function _stateWindow(
    args, size, openState, _iris: () -> ()
)
    Iris.Window(args, {size = size, isOpened = openState})
    _iris()
    Iris.End()
end


function _newIrisControlledRenderBuffer(
    _render: (buffer, EditableImage) -> (),
    state: any,
    editableImage: EditableImage,
    displayBuffer: buffer
): IrisControlledRenderBuffer

    return {
        Buffer = displayBuffer,
        Image = editableImage,
        Content = Content.fromObject(editableImage),
        State = state,
        Render = function()
            _render(displayBuffer, editableImage)
        end,
        RenderIfState = function()
            if not state:get() then return end
            _render(displayBuffer, editableImage)
        end,
    }
end


function _windowControl(states)
    for uiName, state in pairs(states) do
        Iris.MenuToggle({uiName}, {isChecked = state})
    end
end


return m