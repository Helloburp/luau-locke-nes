local inst_core = script.Parent.Parent.Core

local h = require(inst_core.Helpers)
local _bff = h.NewBitfieldFunctions
local _gib = h.NewGetInBufferWithAlignment

local T = require(script.Parent["PPU.types"])

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>



local VRAM_ADDR_MASKS: {[T.EVRamAddressComponent]: number} = {
    ["X"] = 0b000000000011111,
    ["Y"] = 0b000001111100000,
    ["N"] = 0b000110000000000,
    ["y"] = 0b111000000000000,
}

local ATTR_ADDR_MASKS: {[T.EAttributeAddressComponent]: number} = {
    ["N"]               = 0b110000000000,
    ["AttributeOffset"] = 0b001111000000,
    ["Y"]               = 0b000000111000,
    ["X"]               = 0b000000000111,
}

local PATTERN_TABLE_ADDR_MASKS: {[T.EPatternTableAddressComponent]: number} = {
    ["FineY"]               = 0b0000000000111,
    ["BitPlane"]            = 0b0000000001000,
    ["TileNumber"]          = 0b0111111110000,
    ["Half"]                = 0b1000000000000,
}

local PPUCTRL_MASKS: {[T.EPpuControlFlag]: number} = {
    ["N"] = 0b00000011, ["I"] = 0b00000100, ["S"] = 0b00001000, ["B"] = 0b00010000,
    ["H"] = 0b00100000, ["P"] = 0b01000000, ["V"] = 0b10000000,
}

local PPUMASK_MASKS: {[T.EPpuMaskFlag]: number} = {
    ["Greyscale"] = 0b00000001,
    ["m"] = 0b00000010,
    ["M"] = 0b00000100,
    ["b"] = 0b00001000,
    ["s"] = 0b00010000,
    ["R"] = 0b00100000,
    ["G"] = 0b01000000,
    ["B"] = 0b10000000,
}

local PPUSTATUS_MASKS: {[T.EPpuStatusFlag]: number} = {
    ["O"] = 0b00100000,
    ["S"] = 0b01000000,
    ["V"] = 0b10000000,
}


local OBJECT_TILENUMBER: {[T.EObjectTileNumber]: number} = {
    ["TileNumber"]  = 0b11111110,
    ["Bank"]        = 0b00000001
}

local OBJECT_ATTRIBUTE: {[T.EObjectAttribute]: number} = {
    ["Palette"]     = 0b00000011,
    ["Priority"]    = 0b00100000,
    ["FlipX"]       = 0b01000000,
    ["FlipY"]       = 0b10000000
}


local SCANLINES_PER_FRAME = 262
local DOTS_PER_SCANLINE = 341

local m = {
    SCANLINES_PER_FRAME = SCANLINES_PER_FRAME,
    DOTS_PER_SCANLINE = DOTS_PER_SCANLINE,
    
    CYCLES_PER_FRAME_NOSKIP = SCANLINES_PER_FRAME * DOTS_PER_SCANLINE,

    VRAM_ADDR_MASKS = VRAM_ADDR_MASKS,
    ATTR_ADDR_MASKS = ATTR_ADDR_MASKS,
    PATTERN_TABLE_ADDR_MASKS = PATTERN_TABLE_ADDR_MASKS,
    PPUCTRL_MASKS = PPUCTRL_MASKS,
    PPUMASK_MASKS = PPUMASK_MASKS,
    PPUSTATUS_MASKS = PPUSTATUS_MASKS,

    BITFIELD_UTIL = {
        VRamAddress         = _bff(VRAM_ADDR_MASKS) :: BitfieldFunctions<T.EVRamAddressComponent>,
        PpuControl          = _bff(PPUCTRL_MASKS) :: BitfieldFunctions<T.EPpuControlFlag>,
        PpuMask             = _bff(PPUMASK_MASKS) :: BitfieldFunctions<T.EPpuMaskFlag>,
        PpuStatus           = _bff(PPUSTATUS_MASKS) :: BitfieldFunctions<T.EPpuStatusFlag>,
        AttributeAddress    = _bff(ATTR_ADDR_MASKS) :: BitfieldFunctions<T.EAttributeAddressComponent>,
        PatternTableAddress = _bff(PATTERN_TABLE_ADDR_MASKS) :: BitfieldFunctions<T.EPatternTableAddressComponent>,
        ObjectTileNumber    = _bff(OBJECT_TILENUMBER) :: BitfieldFunctions<T.EObjectTileNumber>,
        ObjectAttribute     = _bff(OBJECT_ATTRIBUTE) :: BitfieldFunctions<T.EObjectAttribute>,
        OAMGetters = {
            Y           = _gib(4, 0),
            TileNumber  = _gib(4, 1),
            Attributes  = _gib(4, 2),
            X           = _gib(4, 3)
        }
    }
}

return m