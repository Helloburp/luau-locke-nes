local m = {}

export type Packet = {
    Frames: buffer,
    FrameTimes: {number}
}


function m.NewPacket(frameBufferSize: number, frameCount: number): Packet
    return {
        Frames = buffer.create(frameBufferSize * frameCount),
        FrameTimes = {}
    }
end


function m.ClearPacket(packet: Packet)
    table.clear(packet.FrameTimes)
end


function m.FrameToPacket_Return_IsPacketFull(
    packet: Packet,
    frameBuffer: buffer,
    timeOffset: number
): boolean
    local frameBufferLength = buffer.len(frameBuffer)
    local nextFrameIndex = #packet.FrameTimes
    local maxFrameIndex = buffer.len(packet.Frames)/frameBufferLength
    buffer.copy(packet.Frames, nextFrameIndex*frameBufferLength, frameBuffer)

    packet.FrameTimes[nextFrameIndex + 1] = timeOffset

    return (nextFrameIndex + 1) == maxFrameIndex
end


-- An initial call with a frame index of -1 is required to render frame 0
function m.PacketToFrame_Return_LastFrameIndex(
    packet: Packet,
    frameBuffer: buffer,
    timeOffset: number,
    lastFrameIndex: number
): number
    if lastFrameIndex + 1 == #packet.FrameTimes then
        return lastFrameIndex
    end

    local nextFrameIndex = _getFrameIndexFromFrameTimes(
        packet.FrameTimes, timeOffset, math.max(lastFrameIndex, 0)
    )

    if nextFrameIndex ~= lastFrameIndex then
        _writePacketFrameToFrameBuffer(frameBuffer, packet.Frames, nextFrameIndex)
    end

    return nextFrameIndex
end


function _getFrameIndexFromFrameTimes(
    frameTimes: {number},
    timeOffset: number,
    lastFrameIndex: number
): number
    for i = lastFrameIndex + 1, #frameTimes do
        local frameTime = frameTimes[i]
        if frameTime <= timeOffset then continue end
        return i - 1
    end
    return 0
end


function _writePacketFrameToFrameBuffer(
    frameBuffer: buffer,
    packetFrameData: buffer,
    frameIndex: number
)
    buffer.copy(
        frameBuffer, 0, packetFrameData,
        frameIndex * buffer.len(frameBuffer), buffer.len(frameBuffer)
    )
end


return m