--!optimize 2

local CONFIG = require(script.CONFIG)
local ROM_NAME, SAVESTATE_NAME, DEBUG_CONFIG =
    CONFIG.ROM_NAME,
    CONFIG.SAVESTATE_NAME,
    CONFIG["DEBUG_CONFIG"] or nil


local inst_root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local UI = require(inst_root.UI)

local API = {
    Parse = require(inst_root.API.Parse),
    Emulation = require(inst_root.API.Emulation),
    AudioPlayer = require(inst_root.API.AudioPlayer)
}

local Auxiliary = {
    StringBufferConversion = require(inst_root.Auxiliary.StringBufferConversion)
}


local Players = game:GetService("Players")

local rom do
    local romModule = game.ReplicatedStorage.Roms:FindFirstChild(ROM_NAME, true)
    assert(romModule, `Unable to find rom "{ROM_NAME}!"`)
    rom = Auxiliary.StringBufferConversion.BufferFromInstance(romModule)
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
local myIrisHook = UI.NewIrisHook(myContext, DEBUG_CONFIG or {})

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



function _audioTest()
    local audioPlayer = API.AudioPlayer.New(
        require(script.CONSTANTS).SFX_LIB, game.Workspace
    )

    local RunService = game:GetService("RunService")
    RunService.RenderStepped:Connect(function()
        API.AudioPlayer.Update(audioPlayer, myIrisHook.Nes.State.CpuPeripherals.APU)
    end)
end

-- _audioTest()