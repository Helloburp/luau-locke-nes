--!optimize 2

local inst_root = script.Parent.Parent.Parent
local inst_api, inst_ui = inst_root.API, inst_root.UI


local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local Ui = {
    Elements = require(inst_ui.Elements),
    Util = require(inst_ui.Util)
}


local m = {}


function m.Render(
    patternViews: {Content},
    nametableViews: {Content},
    paletteView: Content,
    logs: {
        OAM: string,
        SecondaryOAM: string,
    },
    _getIrisStateByImage: (Content) -> any
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
        Ui.Elements.IrisContentImage(patternViews[1], SIZES.PATTERN_TABLE)
        Ui.Elements.IrisContentImage(patternViews[2], SIZES.PATTERN_TABLE)
        Iris.End()
    end

    local function _palattes()
        Ui.Elements.IrisContentImage(paletteView, SIZES.PALETTES*10)
    end



    local function _nametables()
        local hoveredNametableOffsetState = Iris.State(nil)

        Iris.SameLine()
        do
            for nt = 0, 3 do
                Iris.Checkbox(
                    `NT {nt}`, {
                        isChecked = _getIrisStateByImage(nametableViews[nt + 1])
                    }
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
            Iris.SameLine()
            table.insert(ntImageLabels, Ui.Elements.IrisContentImage(
                nametableViews[1], SIZES.NAMETABLE
            ))
            table.insert(ntImageLabels, Ui.Elements.IrisContentImage(
                nametableViews[2], SIZES.NAMETABLE
            ))
            Iris.End()
            Iris.SameLine()
            table.insert(ntImageLabels, Ui.Elements.IrisContentImage(
                nametableViews[3], SIZES.NAMETABLE
            ))
            table.insert(ntImageLabels, Ui.Elements.IrisContentImage(
                nametableViews[4], SIZES.NAMETABLE
            ))
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


return m