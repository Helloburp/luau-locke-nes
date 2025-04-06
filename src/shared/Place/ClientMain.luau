local inst_root = script.Parent.Parent
local inst_place, inst_api = inst_root.Place, inst_root.API
local T = require(inst_place["ClientMain.types"])
type State = T.State

local API = {
    Display = require(inst_api.Display),
    AudioPlayer = require(inst_api.AudioPlayer)
}

local T_AUDIOPLAYER = require(inst_api["AudioPlayer.types"])
type AudioPlayerLibrary = T_AUDIOPLAYER.Library

local T_WORLD = require(inst_place["World.types"])
type World = T_WORLD.World


local C_DISPLAY = require(inst_api["Display.constants"])

local m = {}

function m.NewState(audioLibrary: AudioPlayerLibrary): State
    return {
        ActiveEmulation = nil,
        ActiveStreamListener = nil,

        MyEditableImage = API.Display.EditableImageFromSize(C_DISPLAY.RESOLUTIONS.SCREEN),
        StreamedEditableImage = API.Display.EditableImageFromSize(C_DISPLAY.RESOLUTIONS.SCREEN),

        AudioPlayer = API.AudioPlayer.New(audioLibrary, game.Workspace),

        IsDebugMenuOpen = false,
        IsReceivingInput = false,
    }
end

function m.ConnectToWorld(state: State, world: World)
    
end


return m