--!optimize 2

local inst_root = script.Parent.Parent.Parent
local inst_api, inst_ui, inst_components, inst_nes =
    inst_root.API,
    inst_root.UI,
    inst_root.Components,
    inst_root.Nes

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES

local T_ELEMENTS = require(inst_ui["Elements.types"])
type IrisState<T> = T_ELEMENTS.IrisState<T>

local T = require(script.Parent["PpuViewer.types"])
type State = T.State


local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local C_PPU = require(inst_components["PPU.constants"])

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Ui = {
    Elements = require(inst_ui.Elements),
    Util = require(inst_ui.Util)
}


local API = {
    Display = require(inst_api.Display)
}


local m = {}


function m.Refresh(
    nes: NES, state: State
)
    for nt, irisBuffer in state.Nametables do
        Ui.Elements.UpdateBuffer(irisBuffer, _newRenderNametable(nes, nt))
    end

    for pt, irisBuffer in state.PatternTables do
        Ui.Elements.UpdateBuffer(irisBuffer, _newRenderPatternTable(nes, pt))
    end

    Ui.Elements.UpdateBuffer(state.Palette, _newRenderPalette(nes))
end


function m.Render(
    state: State,
    logs: {
        OAM: string,
        SecondaryOAM: string,
    }
)
    local function _patternTables()
        Iris.SameLine()
        for pt = 0, 1 do
            Iris.Checkbox(
                `PT {pt}`, {
                    isChecked = state.PatternTables[pt].State
                }
            )
        end
        Iris.End()
        Iris.SameLine()
        Ui.Elements.IrisContentImage(state.PatternTables[0].Content, SIZES.PATTERN_TABLE)
        Ui.Elements.IrisContentImage(state.PatternTables[1].Content, SIZES.PATTERN_TABLE)
        Iris.End()
    end

    local function _palattes()
        Ui.Elements.IrisContentImage(state.Palette.Content, SIZES.PALETTES*10)
    end


    local function _nametables()
        local hoveredNametableOffsetState = Iris.State(nil)

        Iris.SameLine()
        do
            for nt = 0, 3 do
                Iris.Checkbox(
                    `NT {nt}`, { isChecked = state.Nametables[nt].State }
                )
            end

            
            local offset: Vector2? = hoveredNametableOffsetState:get()
            if offset then
                Iris.Text(`({offset.X}, {offset.Y})`)
            end
        end
        Iris.End()

        local ntImageLabels = {}
        do
            local _newNametableImage = function(i: number)
                return Ui.Elements.IrisContentImage(state.Nametables[i].Content, SIZES.NAMETABLE)
            end

            Iris.SameLine()
            table.insert(ntImageLabels, _newNametableImage(0))
            table.insert(ntImageLabels, _newNametableImage(1))
            Iris.End()
            Iris.SameLine()
            table.insert(ntImageLabels, _newNametableImage(2))
            table.insert(ntImageLabels, _newNametableImage(3))
            Iris.End()
        end

        hoveredNametableOffsetState:set(nil)
        for i, imageLabel in pairs(ntImageLabels) do
            local offset = Ui.Util.GetOffsetInImage(imageLabel, 8)
            if not offset then continue end
            hoveredNametableOffsetState:set(offset)
        end
    end

    local function _objects()
        Iris.Text("Secondary OAM")
        Iris.Text(logs.SecondaryOAM)
        Iris.Separator()
        Iris.Text("Primary OAM")
        Iris.Text(logs.OAM)
    end

    Iris.Tree("Pattern Tables", {isUncollapsed = false})
    do
        _patternTables()
        _palattes()
    end
    Iris.End()

    Iris.Tree("Nametables", {isUncollapsed = false})
    _nametables()
    Iris.End()

    Iris.Tree("Objects", {isUncollapsed = false})
    _objects()
    Iris.End()
end


function m.State(): State
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

    local nametables = (function()
        local t = {}
        for nt = 0, 3 do
            t[nt] = Ui.Elements.IrisControlledRenderBuffer(
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
            t[pt] = Ui.Elements.IrisControlledRenderBuffer(
                ptStates[pt],
                API.Display.EditableImageFromSize(SIZES.PATTERN_TABLE),
                API.Display.NewDisplayBuffer(SIZES.PATTERN_TABLE)
            )
        end
        return t
    end)()

    local palette = Ui.Elements.IrisControlledRenderBuffer(
        Iris.State(true),
        API.Display.EditableImageFromSize(SIZES.PALETTES),
        API.Display.NewDisplayBuffer(SIZES.PALETTES)
    )

    return {
        Nametables = nametables,
        PatternTables = patternTables,
        Palette = palette
    }
end


function _newRenderNametable(nes: NES, nt: number)
    return function(b: buffer, image: EditableImage)
        API.Display.RefreshNametable(
            b, image, nes.PpuBus, nt,
            C_PPU.BITFIELD_UTIL.PpuControl.GetBit(
                "B", nes.Ppu.State.Registers.PPUCTRL
            )
        )
    end
end


function _newRenderPatternTable(nes: NES, pt: number)
    return function(b: buffer, image: EditableImage)
        API.Display.RefreshPatternTable(b, image, nes.PpuBus, pt == 1)
    end
end


function _newRenderPalette(nes: NES)
    return function(b: buffer, image: EditableImage)
        API.Display.RefreshPalette(b, image, nes.PpuBus)
    end
end


return m