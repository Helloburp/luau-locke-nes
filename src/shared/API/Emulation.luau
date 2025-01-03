local inst_root = script.Parent.Parent
local inst_nes = inst_root.Nes

local C = require(script.Parent["Emulation.constants"])
local T = require(script.Parent["Emulation.types"])
type IO = T.IO

type State<MapperState,PortState> = T.State<MapperState,PortState>
type Emulation<MapperState,PortState> = T.Emulation<MapperState,PortState>
type IMapper<State> = T.IMapper<State>
type IPorts<State> = T.IPorts<State>
type IEmulation<MapperState,PortState> = T.IEmulation<MapperState,PortState>


local T_NES = require(inst_nes["NES.types"])
type NesState = T_NES.State
type NES = T_NES.NES
type Display = T_NES.Display


local T_CONTROLLER = require(script.Parent["Controller.types"])
type ControllerState = T_CONTROLLER.State
type EInput = T_CONTROLLER.EInput


local Controller = require(script.Parent.Controller)
local Parse = require(script.Parent.Parse)
local Nes = require(inst_nes.NES)

local HttpService = game:GetService("HttpService")

local m = {}

function m.FromIO<MapperState>(io: IO): IEmulation<MapperState,ControllerState>
    local header = Parse.Header(io.Rom)
    local iMapper = C.MAPPERS_BY_ID[header.MapperId](io.Rom)

    local function _fromState(state: State<MapperState,ControllerState>)
        local iPorts = Controller.New(
            io.GetPort1ButtonDown,
            io.GetPort2ButtonDown,
            function() return state.Nes.CpuPeripherals.ControllerLatch end
        )

        local nes = Nes.New(
            io.Display,
            iPorts.FromState(state.Ports),
            iMapper.FromState(state.Mapper),
            state.Nes
        )

        return {
            Nes = nes,
            IMapper = iMapper,
            IPorts = iPorts,
            State = state
        }
    end

    local function _copyState(
        state: State<MapperState,ControllerState>
    ): State<MapperState,ControllerState>
        return m.CopyState(state, iMapper.CopyState, Controller.CopyState)
    end

    local function _newState(): State<MapperState,ControllerState>
        return m.NewState(iMapper.NewState, Controller.NewState)
    end

    return {
        FromState = _fromState,
        CopyState = _copyState,
        NewState = _newState
    }
end


function m.NewState<MapperState,PortState>(
    _newMapperState: () -> MapperState,
    _newPortState: () -> PortState
): State<MapperState,PortState>
    return {
        Nes = Nes.NewState(),
        Mapper = _newMapperState(),
        Ports = _newPortState()
    }
end


function m.CopyState<MapperState,PortState>(
    state: State<MapperState,PortState>,
    _copyMapper: (MapperState) -> MapperState,
    _copyPorts: (PortState) -> PortState
)
    return {
        Nes = Nes.CopyState(state.Nes),
        Mapper = _copyMapper(state.Mapper),
        Ports = _copyPorts(state.Ports)
    }
end


function m.SerializeState<T,V>(state: State<T,V>): string
    return HttpService:JSONEncode(state)
end


function m.DeserializeState<T,V>(str: string): State<T,V>
    return HttpService:JSONDecode(str)
end


return m