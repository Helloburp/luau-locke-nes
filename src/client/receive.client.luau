
local inst_root = game.ReplicatedStorage.Shared
local inst_auxiliary, inst_api = inst_root.Auxiliary, inst_root.API

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local StreamPacket = require(inst_auxiliary.StreamPacket)
type Packet = StreamPacket.Packet

local Display = require(inst_api.Display)

local C_DISPLAY = require(inst_api["Display.constants"])
local STREAM_GAMEPLAY = game.ReplicatedStorage
    :FindFirstChild("STREAM_GAMEPLAY") :: UnreliableRemoteEvent

local myDisplayBuffer = Display.NewDisplayBuffer(C_DISPLAY.RESOLUTIONS.SCREEN)
local myImage = Display.EditableImageFromSize(C_DISPLAY.RESOLUTIONS.SCREEN)

local lastPacketReceiveTimestamp = 0
local lastPacketFrameIndex = -1
local currentPacket: Packet? = nil


STREAM_GAMEPLAY.OnClientEvent:Connect(function(newPacket: Packet)
    lastPacketReceiveTimestamp = tick()
    lastPacketFrameIndex = -1
    currentPacket = newPacket
end)


RunService.RenderStepped:Connect(function()
    if not currentPacket then return end
    local timeOffset = tick() - lastPacketReceiveTimestamp

    lastPacketFrameIndex = StreamPacket.PacketToFrame_Return_LastFrameIndex(
        currentPacket, myDisplayBuffer, timeOffset, lastPacketFrameIndex
    )

    Display.WriteBufferToImage(myDisplayBuffer, myImage)
end)

-- Screen
do
    local mainPart = Instance.new("Part", game.Workspace)
    mainPart.Size = Vector3.new(40, 30, 0.5)
    mainPart.CFrame = CFrame.new(0, 20, 10)
    mainPart.Anchored = true

    local mainUi = Instance.new("SurfaceGui", Players.LocalPlayer.PlayerGui)
    mainUi.ResetOnSpawn = false
    mainUi.Adornee = mainPart
    mainUi.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
    mainUi.CanvasSize = C_DISPLAY.RESOLUTIONS.SCREEN

    local imageLabel = Instance.new("ImageLabel", mainUi)
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.ImageContent = Content.fromObject(myImage)
end
