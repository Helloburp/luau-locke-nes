--!optimize 2
local root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local Parse = require(root.Parse)
local UI = require(script.UI)
local API = require(root.API)

local ROM_NAME = "IceClimber.nes"
local SAVESTATE_NAME = nil -- "dk_demo"

local rom do
    local romModule = game.ReplicatedStorage.Roms:FindFirstChild(ROM_NAME, true)
    assert(romModule, `Unable to find rom "{ROM_NAME}!"`)
    local romStr = require(romModule)
    rom = Parse.HexStrToBuffer(romStr)
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
    myUi.WindowStates.Screen:set(false)
    myUi.WindowStates.Execution:set(false)
    myUi.WindowStates.PpuViewer:set(true)
    myUi.RunningState.Running = false
end

Iris:Connect(myUi.Iris)