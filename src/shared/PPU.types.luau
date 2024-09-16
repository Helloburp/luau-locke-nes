--[[
    Source: https://www.nesdev.org/wiki/PPU_registers
]]

local T = require(script.Parent["Helpers.types"])

export type u8 = T.u8
export type u16 = T.u16
export type Bus = T.Bus

export type Registers = {
    PPUCTRL: u8, PPUMASK: u8, PPUSTATUS: u8,
    OAMADDR: u8, OAMDATA: u8, PPUSCROLL: u8,
    PPUADDR: u8, PPUDATA: u8, OAMDMA: u8
}

export type EPpuControlFlags    = "N" | "I" | "S" | "B" | "H" | "P" | "V"
export type EPpuMaskFlags       = "G" | "m" | "M" | "b" | "s" | "R" | "G" | "B"
export type EPpuStatusFlags     = "O" | "S" | "V"

return {}