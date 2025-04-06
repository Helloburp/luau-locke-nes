local m = {}

local UserInputService = game:GetService("UserInputService")

local inst_root = script.Parent.Parent
local inst_api = inst_root.API


local T_CONTROLLER = require(inst_api["Controller.types"])
type EInput = T_CONTROLLER.EInput

local KEYCODES_BY_INPUT: {[EInput]: Enum.KeyCode} = {
    ["A"]       = Enum.KeyCode.J,
    ["B"]       = Enum.KeyCode.K,
    ["Select"]  = Enum.KeyCode.LeftShift,
    ["Start"]   = Enum.KeyCode.Return,
    ["Up"]      = Enum.KeyCode.W,
    ["Down"]    = Enum.KeyCode.S,
    ["Left"]    = Enum.KeyCode.A,
    ["Right"]   = Enum.KeyCode.D,
}

function m.New(): (EInput) -> boolean
    local keysDown = {}

    UserInputService.InputBegan:Connect(function(inputObject: InputObject)
        if not inputObject.KeyCode then return end
        for eInput, keycode in KEYCODES_BY_INPUT do
            if inputObject.KeyCode ~= keycode then continue end
            keysDown[eInput] = true
        end
    end)

    UserInputService.InputEnded:Connect(function(inputObject: InputObject)
        if not inputObject.KeyCode then return end
        for eInput, keycode in KEYCODES_BY_INPUT do
            if inputObject.KeyCode ~= keycode then continue end
            keysDown[eInput] = false
        end
    end)

    return function(input: EInput)
        return keysDown[input]
    end
end

return m