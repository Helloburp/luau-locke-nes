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

export type InternalRegisters = {
    v: u16,     -- 15 bits (current vram address)
    t: u16,     -- 15 bits (temporary vram address)
    x: u8,      -- 3 bits (fine x scroll)
    w: boolean  -- 1st/second write toggle
}

export type EPpuControlFlag     = "N" | "I" | "S" | "B" | "H" | "P" | "V"
export type EPpuMaskFlag        = "G" | "m" | "M" | "b" | "s" | "R" | "G" | "B"
export type EPpuStatusFlag      = "O" | "S" | "V"

export type EVRamAddressComponent = "X" | "Y" | "N" | "y"

return {}