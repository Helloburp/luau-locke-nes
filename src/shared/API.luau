local T = require(script.Parent["API.types"])
local C = require(script.Parent["API.constants"])

local T_NES = require(script.Parent["NES.types"])
type NesState<MapperState> = T_NES.State<MapperState>
type NES<State> = T_NES.NES<State>
type IDisplay = T_NES.IDisplay
type IMapper<State> = T_NES.IMapper<State>


local Parse = require(script.Parent.Parse)
local Nes = require(script.Parent.NES)

local HttpService = game:GetService("HttpService")

local m = {}

function m.Nes<T>(
    rom: buffer, display: IDisplay, state: NesState<T>?
): NES<T>
    local header = Parse.Header(rom)
    local mapper = C.MAPPERS_BY_ID[header.MapperId](rom)
    local myNes = Nes.New(
        display, mapper, state or Nes.NewState(mapper.NewState())
    )

    if not state then
        Nes.Reset(myNes)
    end

    return myNes
end


function m.SaveState<T>(nes: NES<T>): NesState<T>
    return Nes.CopyState(nes.State, nes.Mapper.CopyState)
end

function m.SerializeState<T>(state: NesState<T>): string
    return HttpService:JSONEncode(state)
end

function m.DeserializeState<T>(str: string): NesState<T>
    return HttpService:JSONDecode(str)
end


return m