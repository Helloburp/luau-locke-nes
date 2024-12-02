--!optimize 2

local ROM_NAME = "DK.nes"
local SAVESTATE_NAME = "dk_demo"


local inst_root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local UI = require(inst_root.UI)

local API = setmetatable({
    Parse = require(inst_root.API.Parse)
}, {__index = require(inst_root.API)})

local rom do
    local romModule = game.ReplicatedStorage.Roms:FindFirstChild(ROM_NAME, true)
    assert(romModule, `Unable to find rom "{ROM_NAME}!"`)
    local romStr = require(romModule)
    rom = API.Parse.HexStrToBuffer(romStr)
end

local savestate do
    if SAVESTATE_NAME then
        local stateModule = game.ReplicatedStorage.Savestates
            :FindFirstChild(SAVESTATE_NAME)
        local stateStr = require(stateModule)
        savestate = API.DeserializeState(stateStr)
    else
        savestate = nil
    end
end

local myUi = UI.FromRom(rom, savestate)

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

-- Debugging
do
    local _myNes = myUi.Nes
    -- myUi.WindowStates.Screen:set(false)
    -- myUi.WindowStates.Execution:set(false)
    -- myUi.WindowStates.PpuViewer:set(true)
    myUi.RunningState.Running = false
end

Iris:Connect(myUi.Iris)