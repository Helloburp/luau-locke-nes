--!optimize 2
local root = game.ReplicatedStorage.Shared
local T_NES = require(root["NES.types"])
local T_DEBUG = require(root["Debug.types"])
local T_H = require(root["Helpers.types"])


type NES<T> = T_NES.NES<T>
type IDisplay = T_NES.IDisplay

type DebugLog = T_DEBUG.DebugLog
type Debugger = T_DEBUG.Debugger
type Bus = T_H.Bus


local Windows = require(script.Parent.Windows)


local m = {}

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Nes = require(root.NES)
local Display = require(root.Display)
local Debug = require(root.Debug)
local C_DISPLAY = require(root["Display.constants"])
local C_PPU = require(root["PPU.constants"])
local C_NES = require(root["NES.constants"])
local h = require(root.Helpers)
local RunService = game:GetService("RunService")
local API = require(root.API)

local SIZES = C_DISPLAY.RESOLUTIONS


function m.NewScreenBuffer()
    return Display.NewDisplayBuffer(SIZES.SCREEN)
end


function m.NewBufferDisplayInterface(b: buffer): IDisplay
    return {
        OnFrameComplete = function() end,
        SetPixelForPpuCycle = Display.NewPlacePixelInFrame(
            Display.NewWriteColorValueToBuffer(b)
        ),
    }
end


function m.FromRom(rom: buffer, state)
    local screenBuffer = m.NewScreenBuffer()
    local display = m.NewBufferDisplayInterface(screenBuffer)
    local myNes = API.Nes(rom, display, state)

    return m.NewIrisHook(myNes, screenBuffer)
end


function m.NewIrisHook<T>(myNes: NES<T>, screenBuffer: buffer)
    local state = {
        Running = false,
        BreakComment = "",
        ClockSpeedState = Iris.State(C_NES.MASTER_CLOCK_HZ_NTSC/60/8/4)
    }
    
    local windowStates = {
        PpuViewer = Iris.State(false),
        Screen = Iris.State(false),
        Execution = Iris.State(false)
    }

    local statelyBufferData = {}
    local function _addStatelyRenderBuffer(
        size, _fn, defaultState, existingBuffer
    )
        local result = _newStateControlledRenderBuffer(
            size, _fn, defaultState, existingBuffer
        )
        table.insert(statelyBufferData, result)
        return result
    end

    local function _getStateByImage(image: EditableImage)
        for _, v in pairs(statelyBufferData) do
            if v.Image ~= image then continue end
            return v.State
        end
        error("Unable to find state for EditableImage!")
    end

    local screen = _addStatelyRenderBuffer(
        SIZES.SCREEN, Display.WriteBufferToImage,
        windowStates.Screen, screenBuffer
    )

    local nametables = (function()
        local t = {}
        for nt = 0, 3 do
            t[nt] = _addStatelyRenderBuffer(
                SIZES.NAMETABLE, function(b, image)
                    Display.RefreshNametable(
                        b, image, myNes.PpuBus, nt,
                        C_PPU.BITFIELD_UTIL.PpuControl.GetBit(
                            "B", myNes.Ppu.State.Registers.PPUCTRL
                        )
                    )
                end
            )
        end
        return t
    end)()

    local patternTables = (function()
        local t = {}
        for pt = 0, 1 do
            t[pt] = _addStatelyRenderBuffer(
                SIZES.PATTERN_TABLE, function(b, image)
                    Display.RefreshPatternTable(
                        b, image, myNes.PpuBus, pt == 1
                    )
                end
            )
        end
        return t
    end)()

    local palette = _addStatelyRenderBuffer(
        SIZES.PALETTES, function(b, image)
            Display.RefreshPalette(b, image, myNes.PpuBus)
        end, true
    )


    local CpuDebugger = Debug.Debugger(function(context)
        state.Running = false
        state.BreakComment = `CPU {context}`
    end)

    local PpuDebugger = Debug.Debugger(function(context)
        state.Running = false
        state.BreakComment = `PPU {context}`
    end)

    h.MapPeripheral(myNes.CpuBus, nil, CpuDebugger.Peripherpal)
    h.MapPeripheral(myNes.PpuBus, nil, PpuDebugger.Peripherpal)

    local myLog = Debug.NewLog()
    local _myClock = Debug.LogClock(Nes.Clock, myLog, 5)


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
            Windows.WindowControl(windowStates)
            _stateWindow({"PPU Viewer"}, windowStates.PpuViewer, function()
                Windows.PpuViewer({
                    patternTables[0].Image, patternTables[1].Image
                },
                {
                    nametables[0].Image, nametables[1].Image,
                    nametables[2].Image, nametables[3].Image
                },
                palette.Image, _getStateByImage
            )
            end)
            _stateWindow({"Screen"}, windowStates.Screen, function()
                Windows.Screen(screen.Image)
            end)
            _stateWindow({"Execution"}, windowStates.Execution, function()
                Windows.Execution(myNes, myLog, state, _myClock)
            end)
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
    }
end


function _stateWindow(
    args, openState, _iris: () -> ()
)
    Iris.Window(args, {isOpened = openState})
    _iris()
    Iris.End()
end


function _newStateControlledRenderBuffer(
    size: Vector2,
    _render: (buffer, EditableImage) -> (),
    stateValue: boolean? | any?,
    existingBuffer: buffer?
)
    local b, image = Display.NewBufferImagePair(size, existingBuffer)
    local state = if stateValue == nil or typeof(stateValue == "boolean")
        then Iris.State(stateValue or false)
        else stateValue

    return {
        Buffer = b,
        Image = image,
        State = state,
        Render = function()
            _render(b, image)
        end,
        RenderIfState = function()
            if not state:get() then return end
            _render(b, image)
        end,
    }
end


return m