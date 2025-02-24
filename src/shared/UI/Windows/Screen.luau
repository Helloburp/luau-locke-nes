--!optimize 2

local inst_root = script.Parent.Parent.Parent
local inst_api, inst_ui = inst_root.API, inst_root.UI


local Iris = require(game.ReplicatedStorage.Packages.Iris)
local Util = require(inst_ui.Util)

local C_DISPLAY = require(inst_api["Display.constants"])

local SIZES = C_DISPLAY.RESOLUTIONS

local m = {}


function m.Render(content: Content)

    local image = Iris.Image{
        "rbxassetid://0", UDim2.fromOffset(SIZES.SCREEN.X, SIZES.SCREEN.Y)
    }.Instance :: ImageLabel

    image.ImageContent = content
    image.ResampleMode = Enum.ResamplerMode.Pixelated

    local offset = Util.GetOffsetInImage(image, 1)

    if offset then
        Iris.Text(`({offset.X}, {offset.Y})`)
    end
end

return m