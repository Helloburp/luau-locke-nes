--!optimize 2

local inst_root = script.Parent.Parent
local inst_core, inst_components, inst_nes, inst_api =
    inst_root.Core,
    inst_root.Components,
    inst_root.Nes,
    inst_root.API

local root = game.ReplicatedStorage.Shared
local T_NES = require(inst_nes["NES.types"])
local T_DEBUG = require(inst_api["Debug.types"])

type NES<State> = T_NES.NES<State>
type DebugLog = T_DEBUG.DebugLog

local m = {}

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local API = setmetatable({
    Log = require(inst_api.Log),
    Debug = require(inst_api.Debug)
}, {__index = require(root.API)})

local C_DISPLAY = require(inst_api["Display.constants"])
local C_NES = require(inst_nes["NES.constants"])

local SIZES = C_DISPLAY.RESOLUTIONS

local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")


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


    local function _getTileInNametableImage(guiObject: GuiObject): Vector2?
        local mouse = UserInputService:GetMouseLocation()
            - GuiService:GetGuiInset()
        local relOffset = mouse - guiObject.AbsolutePosition
        local size = guiObject.AbsoluteSize
        if not (relOffset.X >= 0 and relOffset.Y >= 0) then return end
        if not (relOffset.X < size.X and relOffset.Y < size.Y) then return end

        local sizeRatio = Vector2.new(
            SIZES.NAMETABLE.X/size.X,
            SIZES.NAMETABLE.Y/size.Y
        )

        return Vector2.new(
            math.floor(relOffset.X * sizeRatio.X/8),
            math.floor(relOffset.Y * sizeRatio.Y/8)
        )
    end

    local function _nametables()
        Iris.SameLine()
        do
            for nt = 0, 3 do
                Iris.Checkbox(
                    `NT {nt}`, {
                        isChecked = _getIrisStateByImage(nametableViews[nt + 1])
                    }
                )
            end
            for nt = 0,3 do
                local view = nametableViews[nt + 1]
                local parent = (view.Parent and view.Parent:IsA("GuiObject"))
                    and view.Parent
                    or nil
                
                if not parent then continue end
                local offset = _getTileInNametableImage(parent)
                if not offset then continue end
                Iris.Text(`({offset.X}, {offset.Y})`)
            end
        end
        Iris.End()
        do
            Iris.SameLine()
            _irisEditableImage(nametableViews[1], SIZES.NAMETABLE)
            _irisEditableImage(nametableViews[2], SIZES.NAMETABLE)
            Iris.End()
            Iris.SameLine()
            _irisEditableImage(nametableViews[3], SIZES.NAMETABLE)
            _irisEditableImage(nametableViews[4], SIZES.NAMETABLE)
            Iris.End()
        end
    end

    Iris.Tree("Pattern Tables", {isUncollapsed = true})
    do
        _patternTables()
        _palattes()
    end
    Iris.End()

    Iris.Tree("Nametables", {isUncollapsed = true})
    _nametables()
    Iris.End()
end


function m.Screen(screenView: EditableImage)
    local image = Iris.Image{
        "rbxassetid://0", UDim2.fromOffset(SIZES.SCREEN.X, SIZES.SCREEN.Y)
    }.Instance :: ImageLabel

    image.ImageContent = Content.fromObject(screenView)
    image.ResampleMode = Enum.ResamplerMode.Pixelated
end


function m.Execution<T>(
    myNes: NES<T>, myLog: DebugLog, state,
    _myClock: (NES<T>) -> ()
)
    Iris.Text{(function()
        local logTexts = {}
        for i = 1, #myLog.PCHistory do
            local pc = myLog.PCHistory[i]
            local isCurrentCommand = i == #myLog.PCHistory - 1
            local prefixText = if isCurrentCommand then "> " else "  "

            local text = string.format(
                "%s%-20s%-20s", prefixText,
                API.Log.GetLogPc(pc, myNes.CpuBus),
                API.Log.GetAssemblyLogPc(pc, myNes.CpuBus)
            )
            if isCurrentCommand then
                text = `<font color="rgb(127,255,127)">{text}</font>`
            end
            table.insert(logTexts, text)
        end

        return table.concat(logTexts, "\n")
    end)(), [Iris.Args.Text.RichText] = true}

    Iris.Text(API.Log.GetLogRegs(myNes.Cpu.State.Registers))
    Iris.Text(API.Log.GetPpuRegLog(myNes.Ppu.State.Registers))
    Iris.Text(API.Log.GetPpuInternalRegLog(myNes.Ppu.State.InternalRegisters))

    Iris.SameLine()
    do
        if Iris.Button(
            if state.Running then "Pause" else "Continue"
        ).clicked() then
            state.BreakComment = ""
            state.Running = not state.Running
        end
        if Iris.Button("Step").clicked() then
            API.Debug.StepCpuInstruction(myNes, _myClock)
        end
        if Iris.Button("Step to VBlank").clicked() then
            API.Debug.StepToVBlank(myNes, _myClock)
        end
    end
    Iris.End()
    Iris.InputNum({"Clock speed (hz)", 500}, {number =  state.ClockSpeedState})
    Iris.SameLine()
    if Iris.Button("Realtime").clicked() then
        state.ClockSpeedState:set(C_NES.MASTER_CLOCK_HZ_NTSC/60/4)
    end
    if Iris.Button("1/2 Realtime").clicked() then
        state.ClockSpeedState:set(math.floor(C_NES.MASTER_CLOCK_HZ_NTSC/60/2/4))
    end
    if Iris.Button("1/8 Realtime").clicked() then
        state.ClockSpeedState:set(math.floor(C_NES.MASTER_CLOCK_HZ_NTSC/60/8/4))
    end
    Iris.End()
    if Iris.Button("Print State").clicked() then
        print(API.SerializeState(API.SaveState(myNes)))
    end
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
    image.ImageContent = Content.fromObject(editableImage)
    image.ResampleMode = Enum.ResamplerMode.Pixelated

    return image
end


return m