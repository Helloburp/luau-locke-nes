local T_CPU = require(script.Parent["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(script.Parent["PPU.types"])
type PPU = T_PPU.PPU


local T = require(script.Parent["Helpers.types"])
type Bus = T.Bus
type Peripheral = T.Peripheral


export type NES = {
    Clock: number,

    CpuBus: Bus,    PpuBus: Bus,
    Cpu: CPU,       Ppu: PPU
}

export type Cartridge = {
    CpuPeripheral: Peripheral,
    PpuPeripheral: Peripheral,
    GetIsMirroringVertical: () -> boolean
}

return {}