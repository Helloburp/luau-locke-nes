local inst_root = script.Parent.Parent
local inst_core, inst_nes = inst_root.Core, inst_root.Nes

local T_CONTROLLER = require(script.Parent["Controller.types"])
type EInput = T_CONTROLLER.EInput

local T_NES = require(inst_nes["NES.types"])
type NesState = T_NES.State
type NES = T_NES.NES
type Cartridge = T_NES.Cartridge
type Display = T_NES.Display


local T_CPUP = require(inst_nes["CPUPeripherals.types"])
type Ports = T_CPUP.Ports


local T = require(inst_core["Helpers.types"])
type IState<T,State,InputArgs=State> = T.IState<T,State,InputArgs>

local T_PARSE = require(script.Parent["Parse.types"])
type Rom = T_PARSE.Rom


export type IMapper<MapperState> = IState<
    Cartridge,
    MapperState,
    State<MapperState,any>
>

export type IPorts<PortState> = IState<
    Ports,
    PortState,
    State<any,PortState>
>

export type IEmulation<MapperState,PortState> = IState<
    Emulation<MapperState,PortState>,
    State<MapperState,PortState>
>
export type IMapperFromRom<MapperState> = (rom: Rom) -> IMapper<MapperState>


export type State<
    MapperState,
    PortState
> = {
    Nes: NesState,
    Mapper: MapperState,
    Ports: PortState
}


export type Emulation<
    MapperState,
    PortState
> = {
    Nes: NES,
    State: State<MapperState,PortState>
}


export type IO = {
    Rom: Rom,
    Display: Display,
    GetPort1ButtonDown: (EInput) -> boolean,
    GetPort2ButtonDown: (EInput) -> boolean,
}

return {}