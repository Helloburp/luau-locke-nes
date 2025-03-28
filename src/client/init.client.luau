--!optimize 2

local CONFIG = require(script.CONFIG)
local ROM_NAME, SAVESTATE_NAME, DEBUG_CONFIG =
    CONFIG.ROM_NAME,
    CONFIG["SAVESTATE_NAME"],
    CONFIG["DEBUG_CONFIG"] or nil


local inst_root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local UI = {
    EmulationContext = require(inst_root.UI.EmulationContext),
    IrisLoop = require(inst_root.UI.IrisLoop)
}

local API = {
    Parse = require(inst_root.API.Parse),
    Emulation = require(inst_root.API.Emulation),
    AudioPlayer = require(inst_root.API.AudioPlayer)
}

local Auxiliary = {
    StringBufferConversion = require(inst_root.Auxiliary.StringBufferConversion),
    StreamPacket = require(inst_root.Auxiliary.StreamPacket)
}


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local STREAM_GAMEPLAY = game.ReplicatedStorage
    :FindFirstChild("STREAM_GAMEPLAY") :: UnreliableRemoteEvent

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

local myContext = UI.EmulationContext.FromRom(rom)
local PACKET_FRAME_COUNT, PACKET_TIMEOUT = 5, 1
local packetClearTimestamp = tick()
local myPacket = Auxiliary.StreamPacket.NewPacket(
    buffer.len(myContext.ScreenBuffer), PACKET_FRAME_COUNT
)

local pendingPacketFlag = false

function _sendPacket()
    STREAM_GAMEPLAY:FireServer(myPacket)
    _clearPacket()
    pendingPacketFlag = false
end

function _clearPacket()
    Auxiliary.StreamPacket.ClearPacket(myPacket)
    packetClearTimestamp = tick()
end

myContext.IO.Display.OnFrameComplete = function()
    if pendingPacketFlag then return end

    local timeOffset = tick() - packetClearTimestamp
    if timeOffset > PACKET_TIMEOUT then
        _clearPacket()
    end

    local isFull = Auxiliary.StreamPacket.FrameToPacket_Return_IsPacketFull(
        myPacket, myContext.ScreenBuffer, timeOffset
    )

    if isFull then
        pendingPacketFlag = true
    end
end


local myUiState = UI.IrisLoop.State()
UI.EmulationContext.NewEmulation(
    myContext, savestate, UI.IrisLoop.EmulationConfig(myUiState, DEBUG_CONFIG)
)

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

-- Debugging
do
    myUiState.WindowStates.Screen:set(true)
    myUiState.WindowStates.Execution:set(true)
    myUiState.RunningState.Running = true
    myUiState.EmulationSpeedState.Comparison = 0.117
    myUiState.ExecutionSpeedState.Comparison = 0.7991
end


Iris:Connect(function()
    UI.IrisLoop.Render(myContext, myUiState)
end)

RunService.Heartbeat:Connect(function(dt)
    UI.IrisLoop.ClockFrame(myContext, myUiState, dt)
    UI.IrisLoop.RenderFrame(myContext, myUiState)

    if pendingPacketFlag then
        _sendPacket()
    end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(char)
    local root = char:WaitForChild("HumanoidRootPart", 5)
    if not (root and root:IsA("BasePart")) then return end
    root.CFrame = CFrame.new(0, 15, 0)
    root.Anchored = true
end)



function _audioTest()
    local audioPlayer = API.AudioPlayer.New(
        require(script.CONSTANTS).SFX_LIB, game.Workspace
    )

    RunService.RenderStepped:Connect(function()
        if not myContext.RunningEmulation then return end
        local myNes = myContext.RunningEmulation.Emulation.Nes
        API.AudioPlayer.Update(audioPlayer, myNes.State.CpuPeripherals.APU)
    end)
end

-- _audioTest()