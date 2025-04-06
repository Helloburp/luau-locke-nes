--!optimize 2

local CONFIG = require(script.CONFIG)
local ROM_NAME, SAVESTATE_NAME, DEBUG_CONFIG =
    CONFIG.ROM_NAME,
    CONFIG["SAVESTATE_NAME"],
    CONFIG["DEBUG_CONFIG"] or nil


local inst_root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local UI = {
    IrisLoop = require(inst_root.UI.IrisLoop),
    InputWrapper = require(inst_root.UI.InputWrapper)
}

local API = {
    Parse = require(inst_root.API.Parse),
    Emulation = require(inst_root.API.Emulation),
    EmulationContext = require(inst_root.API.EmulationContext),
    AudioPlayer = require(inst_root.API.AudioPlayer),
}

local Auxiliary = {
    StringBufferConversion = require(inst_root.Auxiliary.StringBufferConversion),
    StreamPacket = require(inst_root.Auxiliary.StreamPacket)
}


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local STREAM_GAMEPLAY = game.ReplicatedStorage
    :FindFirstChild("STREAM_GAMEPLAY") :: RemoteEvent

local HTTP_GET = game.ReplicatedStorage
    :FindFirstChild("HTTP_GET") :: RemoteFunction

local ROM do
    if ROM_NAME then
        local romModule = game.ReplicatedStorage.Roms:FindFirstChild(ROM_NAME, true)
        assert(romModule, `Unable to find rom "{ROM_NAME}!"`)
        ROM = Auxiliary.StringBufferConversion.BufferFromInstance(romModule)
    else
        ROM = nil
    end
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

local _getPort1 = UI.InputWrapper.New()
local myUiState = UI.IrisLoop.State()

local myIO = nil
local myContext = nil
local pendingPacketFlag = false
local PACKET_FRAME_COUNT, PACKET_TIMEOUT = 5, 1
local packetClearTimestamp = tick()
local myPacket = Auxiliary.StreamPacket.NewPacket(0, 0)


function _sendPacket()
    STREAM_GAMEPLAY:FireServer(myPacket)
    _clearPacket()
    pendingPacketFlag = false
end


function _clearPacket()
    Auxiliary.StreamPacket.ClearPacket(myPacket)
    packetClearTimestamp = tick()
end


function _newContext(rom: buffer)
    myIO = API.EmulationContext.NewIO(
        rom, API.EmulationContext.NewScreenBuffer(),
        _getPort1, function() return false end
    )
    myContext = API.EmulationContext.FromIO(myIO)
    myPacket = Auxiliary.StreamPacket.NewPacket(
        buffer.len(myIO.Display.ScreenBuffer), PACKET_FRAME_COUNT
    )

    myIO.Display.OnFrameComplete = function()
        if pendingPacketFlag then return end

        local timeOffset = tick() - packetClearTimestamp
        if timeOffset > PACKET_TIMEOUT then
            _clearPacket()
        end

        local isFull = Auxiliary.StreamPacket.FrameToPacket_Return_IsPacketFull(
            myPacket, myIO.Display.ScreenBuffer, timeOffset
        )

        if isFull then
            pendingPacketFlag = true
        end
    end

    API.EmulationContext.NewEmulation(
        myContext, savestate, UI.IrisLoop.EmulationConfig(myUiState, DEBUG_CONFIG)
    )
end


if ROM then
    _newContext(ROM)
end

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
    local inputText = Iris.InputText({"Rom URL"})
    if Iris.Button().clicked() then
		local url = inputText.text.value
		task.spawn(function()
			local s, result = HTTP_GET:InvokeServer(url)
	        if not s then
	            warn(result)
			else
				_newContext(game:GetService("HttpService"):JSONDecode(result).Rom)
			end
		end)
    end

    if not (myContext and myIO) then return end
    UI.IrisLoop.Render(myContext, myUiState, myIO)
end)

RunService.Heartbeat:Connect(function(dt)
    if not (myContext and myIO) then return end

    if myContext.RunningEmulation then
        UI.IrisLoop.ClockFrame(myContext.RunningEmulation, myUiState, dt)
    end
    UI.IrisLoop.RenderFrame(myIO.Display.ScreenBuffer, myUiState)

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
        if not myContext then return end
        if not myContext.RunningEmulation then return end
        local myNes = myContext.RunningEmulation.Emulation.Nes
        API.AudioPlayer.Update(audioPlayer, myNes.State.CpuPeripherals.APU)
    end)
end

-- _audioTest()