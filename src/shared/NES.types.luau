local T_CPU = require(script.Parent["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(script.Parent["PPU.types"])
type PPU = T_PPU.PPU


local T = require(script.Parent["Helpers.types"])
type Bus = T.Bus


export type NES = {
    NmiSet: boolean,
    Clock: number,

    CpuBus: Bus,    PpuBus: Bus,
    Cpu: CPU,       Ppu: PPU
}


return {}