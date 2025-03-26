--[[
    Source: https://www.nesdev.org/wiki/PPU_registers
]]

local inst_core = script.Parent.Parent.Core
local T = require(inst_core["Helpers.types"])

type u8 = T.u8
type u16 = T.u16
type Bus = T.Bus
type ExecutionState = T.ExecutionState
type BitfieldFunctions<T> = T.BitfieldFunctions<T>


export type PPU = {
    State: State,

    TriggerNmi: () -> (),
    SetPixelForCycle: (i: number, color: u8) -> (),
    OnFrameComplete: () -> (),
    OnScanline: () -> ()
}

export type PPUClosure = {
    State: State,
    Clock: () -> (),
    UpdateRead: ((u16) -> u8) -> ()
}


export type Registers = {
    PPUCTRL: u8, PPUMASK: u8, PPUSTATUS: u8, OAMADDR: u8, PPUDATA: u8
}

export type Latches = {
    Nametable: u8,              AttributeTable: u8,
    PatternTableTileLow: u8,    PatternTableTileHigh: u8
}

export type Shifters = {
    --[[
        Attributes hold current value in 1 bit, but because of how the
        shifting works, this 1 bit is converted into 8 bits to sync.
    ]]

    AttributeHi: u16,    AttributeLo: u16,
    PatternHi: u16,     PatternLo: u16,
}

export type InternalRegisters = {
    v: u16,     -- 15 bits (current vram address)
    t: u16,     -- 15 bits (temporary vram address)
    x: u8,      -- 3 bits (fine x scroll)
    w: boolean  -- 1st/second write toggle
}

export type SpriteEvalResult = {
    SpriteFoundCount: number,
    IsSprite0BeingDrawn: boolean,
    IsOverflow: boolean,
    PixelCache: {u8},       -- Default: 0x00; otherwise a pixel value
    SpriteIndexCache: {u8}  -- Default: -1 (no sprite); otherwise, an index into SecondaryOAM
}

export type State = {
    ExecutionState: ExecutionState,
    Registers: Registers,
    InternalRegisters: InternalRegisters,
    Latches: Latches,
    Shifters: Shifters,
    SpriteEvalResult: SpriteEvalResult,

    OAM: buffer,
    SecondaryOAM: buffer,
    PaletteControl: {u8},   -- Offset by one because... lua :)

    FrameCounter: number,
}

export type EPpuControlFlag     = "N" | "I" | "S" | "B" | "H" | "P" | "V"
export type EPpuMaskFlag        = "Greyscale" | "m" | "M" | "b" | "s" | "R" | "G" | "B"
export type EPpuStatusFlag      = "O" | "S" | "V"

export type EPatternTableAddressComponent = "FineY" | "BitPlane" | "TileNumber" | "Half"

export type EVRamAddressComponent = "X" | "Y" | "N" | "y"
export type EAttributeAddressComponent = "N" | "AttributeOffset" | "Y" | "X"

export type EObjectTileNumber = "TileNumber" | "Bank"
export type EObjectAttribute = "Palette" | "Priority" | "FlipX" | "FlipY"


return {}