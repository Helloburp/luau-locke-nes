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
type NES = T.NES
type Cartridge = T.Cartridge
type State = T.State
type Display = T.Display

local T_CPUP = require(script.Parent["CPUPeripherals.types"])
type Ports = T_CPUP.Ports



local m = {}


-- Clock amounts divided by 4 (common denominator)
function m.Clock(nes: NES)
    Ppu.Clock(nes.Ppu, nes.PpuBus)

    -- An offset of 1 allows for accurate syncronization.
    if (nes.State.Clock + 1)%3 == 0 then
        CpuPeripherals.Clock2A03(nes.State.CpuPeripherals, nes.Cpu, nes.CpuBus, nes.State.Ppu.OAM)
    end

    nes.State.Clock += 1
end


function m.NewState(): State
    return {
        Cpu = Cpu.NewState(),
        CpuPeripherals = CpuPeripherals.NewState(),
        Ppu = Ppu.NewState(),
        PpuPeripherals = PpuPeripherals.NewState(),
        Clock = 0
    }
end


function m.CopyState(state: State): State
    return {
        Cpu = Cpu.CopyState(state.Cpu),
        CpuPeripherals = CpuPeripherals.CopyState(state.CpuPeripherals),
        Ppu = Ppu.CopyState(state.Ppu),
        PpuPeripherals = PpuPeripherals.CopyState(state.PpuPeripherals),
        Clock = state.Clock
    }
end


function m.New(
    displayInterface: Display,
    portInterface: Ports,
    cartridge: Cartridge,
    state: State
): NES
    local nes: NES
    local cpuBus = h.NewBus()
    local ppuBus = h.NewBus()

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
        cartridge.OnScanline or function() end,
        displayInterface.SetPixelForPpuCycle,
        state.Ppu
    )

    CpuPeripherals.MapPeripheralsFromState(
        cpuBus, ppuBus, ppu, state.CpuPeripherals, portInterface
    )

    PpuPeripherals.MapPeripheralsFromState(
        ppuBus,
        state.Ppu.Registers,
        cartridge.MirrorVRam,
        state.PpuPeripherals
    )

    nes = {
        Cpu = cpu,
        Ppu = ppu,
        CpuBus = cpuBus,
        PpuBus = ppuBus,

        State = state,

        Clock = 0
    }

    return nes
end


-- Not complete/accurate. Just used for starting programs
function m.Reset<T>(nes: NES)
    nes.Cpu.State.Registers.PC = h.ReadAddressFromVector(nes.CpuBus, 0xFFFC)
end

return m