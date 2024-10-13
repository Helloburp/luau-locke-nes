local root = game.ReplicatedStorage.Shared
local T_NES = require(root["NES.types"])
local T_DEBUG = require(root["Debug.types"])

type NES = T_NES.NES
type Cartridge = T_NES.Cartridge
type DebugLog = T_DEBUG.DebugLog
type Debugger = T_DEBUG.Debugger

type EmulationState = {
    Running: boolean,
    BreakComment: string
}


local m = {}

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Nes = require(root.NES)
local Display = require(root.Display)
local Log = require(root.Log)
local Debug = require(root.Debug)
local C_DISPLAY = require(root["Display.constants"])
local h = require(root.Helpers)

local SIZES = C_DISPLAY.RESOLUTIONS


local function _patternMemory(patternView: EditableImage)
    Iris.Window("Pattern Memory", {size = SIZES.PATTERN_TABLE})
    local image = Iris.Image{
        "rbxassetid://0", UDim2.new(0, 256, 0, 256)
    }.Instance :: ImageLabel

    patternView.Parent = image
    image.ResampleMode = Enum.ResamplerMode.Pixelated
    Iris.End()
end

local function _screen(screenView: EditableImage)
    Iris.Window("Screen", {size = SIZES.SCREEN})
    local image = Iris.Image{
        "rbxassetid://0", UDim2.new(0, SIZES.SCREEN.X, 0, SIZES.SCREEN.Y)
    }.Instance :: ImageLabel

    screenView.Parent = image
    image.ResampleMode = Enum.ResamplerMode.Pixelated
    Iris.End()
end


local function _execution(
    myNes: NES, myLog: DebugLog, state: EmulationState,
    _myClock: (NES) -> ()
)
    Iris.Window("Execution")
    Iris.Text{(function()
        local logTexts = {}
        for i = 1, #myLog.PCHistory do
            local pc = myLog.PCHistory[i]
            local isCurrentCommand = i == #myLog.PCHistory - 1
            local prefixText = if isCurrentCommand then "> " else "  "

            local text = string.format(
                "%s%-20s%-20s", prefixText,
                Log.GetLogPc(pc, myNes.CpuBus),
                Log.GetAssemblyLogPc(pc, myNes.CpuBus)
            )
            if isCurrentCommand then
                text = `<font color="rgb(127,255,127)">{text}</font>`
            end
            table.insert(logTexts, text)
        end

        return table.concat(logTexts, "\n")
    end)(), [Iris.Args.Text.RichText] = true}
    Iris.Text(Log.GetLogRegs(myNes.Cpu.Registers))
    Iris.Text(Log.GetPpuRegLog(myNes.Ppu.InternalState.Registers))
    Iris.Text(Log.GetPpuInternalRegLog(myNes.Ppu.InternalState.InternalRegisters))

    Iris.SameLine()
    if Iris.Button(
        if state.Running then "Pause" else "Continue"
    ).clicked() then
        state.BreakComment = ""
        state.Running = not state.Running
    end
    if Iris.Button("Step").clicked() then
        Debug.StepCpuInstruction(myNes, _myClock)
    end
    if Iris.Button("Step to VBlank").clicked() then
        Debug.StepToVBlank(myNes, _myClock)
    end
    Iris.End()
    if state.BreakComment ~= "" then
        Iris.Text{`Breakpoint hit: {state.BreakComment}`, [Iris.Args.Text.Color] = Color3.new(1,.5,.5)}
    end
    Iris.End()
end

function m.NewIrisHook(
    myCartridge: Cartridge
): {
    Iris: () -> (),
    CpuDebugger: Debugger, PpuDebugger: Debugger,
    Nes: NES
}
    local state: EmulationState = {
        Running = false,
        BreakComment = ""
    }

    local screenBuffer, patternBuffer, screenView, patternView do
        screenView = Instance.new("EditableImage")
        screenView.Size = SIZES.SCREEN

        patternView = Instance.new("EditableImage")
        patternView.Size = SIZES.PATTERN_TABLE

        patternBuffer = Display.NewDisplayBuffer(SIZES.PATTERN_TABLE)

        screenBuffer = Display.NewDisplayBuffer(SIZES.SCREEN)
    end


    local function _onFrameComplete() end
    local _setPixelColorForCycle = Display.NewPlacePixelInFrame(screenBuffer)

    local myNes = Nes.New(
        _onFrameComplete, _setPixelColorForCycle, myCartridge
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


    game:GetService("RunService").Heartbeat:Connect(function()
        for x = 1, 2500 do
            if not state.Running then continue end
            _myClock(myNes)
        end
        Display.DrawPatternTable(
            myNes.PpuBus, false, 0,
            function(i, color)
                Display.WriteColorValueToDisplayBuffer(
                    patternBuffer, i, color
                )
            end
        )
        patternView:WritePixelsBuffer(
            Vector2.new(), SIZES.PATTERN_TABLE, patternBuffer
        )
        screenView:WritePixelsBuffer(
            Vector2.new(), SIZES.SCREEN, screenBuffer
        )
    end)


    return {
        Iris = function()
            _patternMemory(patternView)
            _screen(screenView)
            _execution(myNes, myLog, state, _myClock)
        end,
        CpuDebugger = CpuDebugger,
        PpuDebugger = PpuDebugger,
        Nes = myNes
    }
end


return m