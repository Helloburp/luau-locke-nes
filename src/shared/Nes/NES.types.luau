local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local T_CPU = require(inst_components["CPU.types"])
type CPU = T_CPU.CPU
type CPUState = T_CPU.State

local T_PPU = require(inst_components["PPU.types"])
type PPU = T_PPU.PPU
type PPUState = T_PPU.State


local T = require(inst_core["Helpers.types"])
type Bus = T.Bus
type Peripheral = T.Peripheral
type u8 = T.u8
type u16 = T.u16


local T_CPUP = require(script.Parent["CPUPeripherals.types"])
type CPUPeripheralState = T_CPUP.State

local T_PPUP = require(script.Parent["PPUPeripherals.types"])
type PPUPeripheralState = T_PPUP.State


export type NES = {
    CpuBus: Bus,    PpuBus: Bus,
    Cpu: CPU,       Ppu: PPU,

    State: State
}

export type Cartridge = {
    CpuPeripheral: Peripheral,
    PpuPeripheral: Peripheral,
    MirrorVRam: (u16) -> u16,
    OnScanline: () -> ()?
}

export type State = {
    Cpu: CPUState, Ppu: PPUState,
    CpuPeripherals: CPUPeripheralState,
    PpuPeripherals: PPUPeripheralState,

    Clock: number
}


export type Display = {
    OnFrameComplete: () -> (),
    SetPixelForPpuCycle: (cycleInFrame: number, color: u8) -> (),
}



return {}