
local root = game.ReplicatedStorage.Shared
local T_NES = require(root["NES.types"])
local T_DEBUG = require(root["Debug.types"])

type NES = T_NES.NES
type DebugLog = T_DEBUG.DebugLog


export type EmulationState = {
    Running: boolean,
    BreakComment: string
}

local m = {}

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Log = require(root.Log)
local Debug = require(root.Debug)
local C_DISPLAY = require(root["Display.constants"])

local SIZES = C_DISPLAY.RESOLUTIONS


function m.WindowControl(states)
    for uiName, state in pairs(states) do
        Iris.MenuToggle({uiName}, {isChecked = state})
    end
end


function m.PpuViewer(
    patternViews: {EditableImage},
    nametableViews: {EditableImage},
    paletteView: EditableImage,
    _getIrisStateByImage: (EditableImage) -> any
)
    local function _patternTables()
        Iris.SameLine()
        for pt = 0, 1 do
            Iris.Checkbox(
                `PT {pt}`, {
                    isChecked = _getIrisStateByImage(patternViews[pt + 1])
                }
            )
        end
        Iris.End()
        Iris.SameLine()
        _irisEditableImage(patternViews[1], SIZES.PATTERN_TABLE)
        _irisEditableImage(patternViews[2], SIZES.PATTERN_TABLE)
        Iris.End()
    end

    local function _palattes()
        _irisEditableImage(paletteView, SIZES.PALETTES*10)
    end

    local function _nametables()
        Iris.SameLine()
        for nt = 0, 3 do
            Iris.Checkbox(
                `NT {nt}`, {
                    isChecked = _getIrisStateByImage(nametableViews[nt + 1])
                }
            )
        end
        Iris.End()
        Iris.SameLine()
        _irisEditableImage(nametableViews[1], SIZES.NAMETABLE)
        _irisEditableImage(nametableViews[2], SIZES.NAMETABLE)
        Iris.End()
        Iris.SameLine()
        _irisEditableImage(nametableViews[3], SIZES.NAMETABLE)
        _irisEditableImage(nametableViews[4], SIZES.NAMETABLE)
        Iris.End()
    end

    Iris.Tree("Pattern Tables")
    do
        _patternTables()
        _palattes()
    end
    Iris.End()

    Iris.Tree("Nametables")
    _nametables()
    Iris.End()
end


function m.Screen(screenView: EditableImage)
    local image = Iris.Image{
        "rbxassetid://0", UDim2.fromOffset(SIZES.SCREEN.X, SIZES.SCREEN.Y)
    }.Instance :: ImageLabel

    screenView.Parent = image
    image.ResampleMode = Enum.ResamplerMode.Pixelated
end


function m.Execution(
    myNes: NES, myLog: DebugLog, state: EmulationState,
    _myClock: (NES) -> ()
)
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
    do
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
    end
    Iris.End()
    if state.BreakComment ~= "" then
        Iris.Text{
            `Breakpoint hit: {state.BreakComment}`,
            [Iris.Args.Text.Color] = Color3.new(1,.5,.5)
        }
    end
end


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


return m