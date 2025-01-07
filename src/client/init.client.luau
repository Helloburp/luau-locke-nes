--!optimize 2

local ROM_NAME = "IceClimber.nes"
local SAVESTATE_NAME = nil -- "dk_start"


local inst_root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local UI = require(inst_root.UI)

local API = {
    Parse = require(inst_root.API.Parse),
    Emulation = require(inst_root.API.Emulation)
}

local Players = game:GetService("Players")

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
        savestate = API.Emulation.DeserializeState(stateStr)
    else
        savestate = nil
    end
end

local myContext = UI.FromRom(rom, savestate)
local myIrisHook = UI.NewIrisHook(myContext)

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

-- Debugging
do
    myIrisHook.WindowStates.Screen:set(true)
    -- myUi.IrisHook.WindowStates.Execution:set(true)
    -- myUi.IrisHook.WindowStates.PpuViewer:set(true)
    myIrisHook.RunningState.Running = true
end


Iris:Connect(myIrisHook.Iris)


Players.LocalPlayer.CharacterAdded:Connect(function(char)
    local root = char:WaitForChild("HumanoidRootPart", 5)
    if not (root and root:IsA("BasePart")) then return end
    root.Anchored = true
end)