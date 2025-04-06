local inst_root = script.Parent.Parent
local inst_api, inst_auxiliary = inst_root.API, inst_root.Auxiliary

local T_EMUCONTEXT = require(inst_api["EmulationContext.types"])
type EmulationContext<T> = T_EMUCONTEXT.EmulationContext<T>

local T_AUDIOPLAYER = require(inst_api["AudioPlayer.types"])
type AudioPlayerState = T_AUDIOPLAYER.State

local StreamPacket = require(inst_auxiliary.StreamPacket)
type Packet = StreamPacket.Packet


export type ActiveEmulation = {
    MyEmulation: EmulationContext<any>,
    OutgoingStreamPacket: Packet?   -- If nil, then is not streaming.
}

export type ActiveStreamListener = {
    IncomingStreamPacket: Packet,
    -- Controller hooks, etc
}

export type State = {
    ActiveEmulation: ActiveEmulation?,
    ActiveStreamListener: ActiveStreamListener?,

    AudioPlayer: AudioPlayerState,          -- For mine if applicable, else the stream listener

    MyEditableImage: EditableImage,         -- For my emulation
    StreamedEditableImage: EditableImage,   -- For the stream listener

    IsReceivingInput: boolean,  -- Overrides movement & other actions to listen for NES input
    IsDebugMenuOpen: boolean,
}


return {}