local T = require(script.Parent["Elements.types"])
type IrisState<T> = T.IrisState<T>
type IrisControlledRenderBuffer = T.IrisControlledRenderBuffer

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


function m.UpdateBuffer(
    irisBuffer: IrisControlledRenderBuffer, _update: (buffer, EditableImage) -> ()
)
    if not irisBuffer.State:get() then return end
    _update(irisBuffer.Buffer, irisBuffer.Image)
end


function m.IrisControlledRenderBuffer(
    state: IrisState<boolean>,
    editableImage: EditableImage,
    displayBuffer: buffer
): IrisControlledRenderBuffer
    return {
        Buffer = displayBuffer,
        Image = editableImage,
        Content = Content.fromObject(editableImage),
        State = state,
    }
end


function m.StateWindow(
    args: {any}?, size: Vector2?, openState: IrisState<boolean>, _iris: () -> ()
)
    Iris.Window(args, {size = size, isOpened = openState})
    _iris()
    Iris.End()
end


function m.WindowControl(states: {{[string]: IrisState<boolean>}})
    for uiName, state in pairs(states) do
        Iris.MenuToggle({uiName}, {isChecked = state})
    end
end


return m