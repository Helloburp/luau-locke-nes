local Iris = require(game.ReplicatedStorage.Packages.Iris)

local m = {}

function m.IrisContentImage(
    content: Content, size: Vector2, arguments: {any}?
)
    local _arguments = if arguments then table.clone(arguments) else {}
    table.insert(_arguments, "rbxassetid://0")
    table.insert(_arguments, UDim2.fromOffset(size.X, size.Y))

    local image = Iris.Image(_arguments).Instance :: ImageLabel
    image.ImageContent = content
    image.ResampleMode = Enum.ResamplerMode.Pixelated

    return image
end


return m