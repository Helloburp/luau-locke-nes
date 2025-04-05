local StreamPacket = require(game.ReplicatedStorage.Shared.Auxiliary.StreamPacket)
type Packet = StreamPacket.Packet

local HttpProvider = require(game.ReplicatedStorage.Shared.Auxiliary.HttpProvider)

local Players = game:GetService("Players")

local RUN_TESTS = false

local STREAM_EVENT = Instance.new("RemoteEvent", game.ReplicatedStorage)
STREAM_EVENT.Name = "STREAM_GAMEPLAY"

local HTTP_GET_FUNCTION = Instance.new("RemoteFunction", game.ReplicatedStorage)
HTTP_GET_FUNCTION.Name = "HTTP_GET"


STREAM_EVENT.OnServerEvent:Connect(function(sendingPlr: Player, payload: Packet)
    assert(payload)
    assert(payload.FrameTimes)
    assert(payload.Frames)

    for _, plr in Players:GetPlayers() do
        -- if plr == sendingPlr then continue end
        STREAM_EVENT:FireClient(plr, payload)
    end
end)


HTTP_GET_FUNCTION.OnServerInvoke = function(plr: Player, url: string)
    return HttpProvider.OnServerInvoke(plr, url)
end


if RUN_TESTS then
    require(script.TestEZ)
end
