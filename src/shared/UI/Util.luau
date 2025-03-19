
local inst_root = script.Parent.Parent
local inst_api = inst_root.API

local C_DISPLAY = require(inst_api["Display.constants"])
local SIZES = C_DISPLAY.RESOLUTIONS

local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")


local m = {}

function m.GetOffsetInImage(guiObject: GuiObject, divisor: number): Vector2?
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
        math.floor(relOffset.X * sizeRatio.X/divisor),
        math.floor(relOffset.Y * sizeRatio.Y/divisor)
    )
end


return m