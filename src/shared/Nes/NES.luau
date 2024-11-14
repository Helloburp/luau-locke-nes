--!optimize 2
local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local Ppu = require(inst_components.PPU)

local Cpu = setmetatable({
    Instructions = require(inst_components.CPU.Instructions),
    AddressingModes = require(inst_components.CPU.AddressingModes)
}, {__index = require(inst_components.CPU)}) 

local CpuPeripherals = require(script.Parent.CPUPeripherals)
local PpuPeripherals = require(script.Parent.PPUPeripherals)


local h = require(inst_core.Helpers)

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Peripheral = T_H.Peripheral

local T = require(script.Parent["NES.types"])
type NES<MapperState> = T.NES<MapperState>
type Cartridge<MapperState> = T.Cartridge<MapperState>
type State<MapperState> = T.State<MapperState>
type IMapper<MapperState> = T.IMapper<MapperState>
type IDisplay = T.IDisplay



local m = {}


-- Clock amounts divided by 4 (common denominator)
function m.Clock<T>(nes: NES<T>)
    Ppu.Clock(nes.Ppu, nes.PpuBus)

    -- An offset of 1 allows for accurate syncronization.
    if (nes.Clock + 1)%3 == 0 then
        Cpu.Clock(nes.Cpu, nes.CpuBus)
    end

    nes.Clock += 1
end


function m.NewState<MapperState>( mapperState: MapperState): State<MapperState>
    return {
        Mapper = mapperState,
        Cpu = Cpu.NewState(),
        CpuPeripherals = CpuPeripherals.NewState(),
        Ppu = Ppu.NewState(),
        PpuPeripherals = PpuPeripherals.NewState()
    }
end


function m.CopyState<MapperState>(
    state: State<MapperState>,
    _copyMapperState: (MapperState) -> MapperState
): State<MapperState>
    return {
        Mapper = _copyMapperState(state.Mapper),
        Cpu = Cpu.CopyState(state.Cpu),
        CpuPeripherals = CpuPeripherals.CopyState(state.CpuPeripherals),
        Ppu = Ppu.CopyState(state.Ppu),
        PpuPeripherals = PpuPeripherals.CopyState(state.PpuPeripherals),
    }
end


function m.New<MapperState>(
    displayInterface: IDisplay,
    mapperInterface: IMapper<MapperState>,
    state: State<MapperState>
): NES<MapperState>
    local nes: NES<MapperState>
    local cpuBus = h.NewBus()
    local ppuBus = h.NewBus()

    local cartridge = mapperInterface.NewCartridge(state.Mapper)

    -- The cartridge can effectively map & observe all reads and writes.
    h.MapPeripheral(cpuBus, nil, cartridge.CpuPeripheral)
    h.MapPeripheral(ppuBus, nil, cartridge.PpuPeripheral)

    local function _nmi()
        nes.Cpu.State.NMIInput = true
    end


    local cpu = Cpu.New(Cpu.AddressingModes, Cpu.Instructions, state.Cpu)
    local ppu = Ppu.New(
        _nmi,
        displayInterface.OnFrameComplete,
        displayInterface.SetPixelForPpuCycle,
        state.Ppu
    )

    CpuPeripherals.MapPeripheralsFromState(
        cpuBus, ppuBus, ppu, state.Ppu.OAM, state.CpuPeripherals
    )

    PpuPeripherals.MapPeripheralsFromState(
        ppuBus,
        state.Ppu.Registers,
        cartridge.GetIsMirroringVertical,
        state.PpuPeripherals
    )

    nes = {
        Cpu = cpu,
        Ppu = ppu,
        CpuBus = cpuBus,
        PpuBus = ppuBus,

        State = state,
        Mapper = mapperInterface,

        Clock = 0
    }

    return nes
end


-- Not complete/accurate. Just used for starting programs
function m.Reset<T>(nes: NES<T>)
    nes.Cpu.State.Registers.PC = h.ReadAddressFromVector(nes.CpuBus, 0xFFFC)
end

return m