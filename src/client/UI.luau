local root = game.ReplicatedStorage.Shared
local T_NES = require(root["NES.types"])
local T_DEBUG = require(root["Debug.types"])
local T_H = require(root["Helpers.types"])


type NES = T_NES.NES
type Cartridge = T_NES.Cartridge
type DebugLog = T_DEBUG.DebugLog
type Debugger = T_DEBUG.Debugger
type Bus = T_H.Bus


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

function _irisEditableImage(
    editableImage: EditableImage, size: Vector2, arguments: {any}?
)
    local _arguments = if arguments then table.clone(arguments) else {}
    table.insert(_arguments, "rbxassetid://0")
    table.insert(_arguments, UDim2.fromOffset(size.X, size.Y))

    local image = Iris.Image(_arguments).Instance :: ImageLabel
    editableImage.Parent = image
    image.ResampleMode = Enum.ResamplerMode.Pixelated
end


function _ppuViewer(
    patternView: EditableImage,
    paletteView: EditableImage,
    nametableViews: {EditableImage}
)
    local function _patternTables()
        Iris.Text("Pattern Tables")
        _irisEditableImage(patternView, SIZES.PATTERN_TABLE*2)
    end

    local function _palattes()
        Iris.Text("Palettes")
        _irisEditableImage(paletteView, SIZES.PALETTES*10)
    end

    local function _nametables()
        Iris.Text("Nametables")
        Iris.SameLine()
        _irisEditableImage(nametableViews[0], SIZES.NAMETABLE)
        _irisEditableImage(nametableViews[1], SIZES.NAMETABLE)
        Iris.End()
        Iris.SameLine()
        _irisEditableImage(nametableViews[2], SIZES.NAMETABLE)
        _irisEditableImage(nametableViews[3], SIZES.NAMETABLE)
        Iris.End()
    end

    Iris.Window("PPU Viewer", {size = SIZES.PATTERN_TABLE*2})
    Iris.SameLine()

    Iris.Group()
    _patternTables()
    _palattes()
    Iris.End()

    Iris.Group()
    _nametables()
    Iris.End()

    Iris.End()

    Iris.End()
end

function _screen(screenView: EditableImage)
    Iris.Window("Screen", {size = SIZES.SCREEN})
    local image = Iris.Image{
        "rbxassetid://0", UDim2.fromOffset(SIZES.SCREEN.X, SIZES.SCREEN.Y)
    }.Instance :: ImageLabel

    screenView.Parent = image
    image.ResampleMode = Enum.ResamplerMode.Pixelated
    Iris.End()
end


function _execution(
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


function _refreshNametable(
    b: buffer, image: EditableImage, ppuBus: Bus, nametable: number
)
    Display.DrawNametable(
        ppuBus, nametable, Display.NewWriteColorValueToBuffer(b)
    )
    Display.WriteBufferToImage(b, image)
end


function _refreshPatternTable(
    b: buffer, image: EditableImage, ppuBus: Bus, right: boolean
)
    Display.DrawPatternTable(
        ppuBus, right, 0, Display.NewWriteColorValueToBuffer(b)
    )
    Display.WriteBufferToImage(b, image)
end


function _refreshPalette(b: buffer, image: EditableImage, ppuBus: Bus)
    Display.DrawPalettes(ppuBus, Display.NewWriteColorValueToBuffer(b))
    Display.WriteBufferToImage(b, image)
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

    local screenBuffer, screenView = Display.NewBufferImagePair(
        C_DISPLAY.RESOLUTIONS.SCREEN
    )
    local patternBuffer, patternView = Display.NewBufferImagePair(
        C_DISPLAY.RESOLUTIONS.PATTERN_TABLE
    )
    local paletteBuffer, paletteView = Display.NewBufferImagePair(
        C_DISPLAY.RESOLUTIONS.PALETTES
    )

    local nametableBuffers, nametableViews = {}, {}
    for nt = 0, 3 do
        nametableBuffers[nt], nametableViews[nt] = Display.NewBufferImagePair(
            SIZES.NAMETABLE
        )
    end

    local myNes = Nes.New(
        function() end, Display.NewPlacePixelInFrame(
            Display.NewWriteColorValueToBuffer(screenBuffer)
        ),
        myCartridge
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

        _refreshPatternTable(patternBuffer, patternView, myNes.PpuBus, false)
        _refreshPalette(paletteBuffer, paletteView, myNes.PpuBus)

        for nt = 0, 0 do -- Debug
            _refreshNametable(
                nametableBuffers[nt], nametableViews[nt], myNes.PpuBus, nt
            )
        end


        Display.WriteBufferToImage(screenBuffer, screenView)
    end)


    return {
        Iris = function()
            _ppuViewer(patternView, paletteView, nametableViews)
            _screen(screenView)
            _execution(myNes, myLog, state, _myClock)
        end,
        CpuDebugger = CpuDebugger,
        PpuDebugger = PpuDebugger,
        Nes = myNes
    }
end


return m