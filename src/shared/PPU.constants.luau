local h = require(script.Parent.Helpers)
local _bff = h.NewBitfieldFunctions

local T = require(script.Parent["PPU.types"])
type u8 = T.u8
type u16 = T.u16
type BitfieldFunctions<T> = T.BitfieldFunctions<T>

-- Generated with scripts/PaletteStringManip.luau
local COLORS = {
	[0x00] = {r=84, g=84, b=84 },	[0x01] = {r=0,  g=30, b=116},	[0x02] = {r=8,  g=16, b=144},	[0x03] = {r=48, g=0,  b=136},	[0x04] = {r=68, g=0,  b=100},	[0x05] = {r=92, g=0,  b=48 },	[0x06] = {r=84, g=4,  b=0  },	[0x07] = {r=60, g=24, b=0  },
	[0x08] = {r=32, g=42, b=0  },	[0x09] = {r=8,  g=58, b=0  },	[0x0A] = {r=0,  g=64, b=0  },	[0x0B] = {r=0,  g=60, b=0  },	[0x0C] = {r=0,  g=50, b=60 },	[0x0D] = {r=0,  g=0,  b=0  },	[0x0E] = {r=0,  g=0,  b=0  },	[0x0F] = {r=0,  g=0,  b=0  },
	[0x10] = {r=152,g=150,b=152},	[0x11] = {r=8,  g=76, b=196},	[0x12] = {r=48, g=50, b=236},	[0x13] = {r=92, g=30, b=228},	[0x14] = {r=136,g=20, b=176},	[0x15] = {r=160,g=20, b=100},	[0x16] = {r=152,g=34, b=32 },	[0x17] = {r=120,g=60, b=0  },
	[0x18] = {r=84, g=90, b=0  },	[0x19] = {r=40, g=114,b=0  },	[0x1A] = {r=8,  g=124,b=0  },	[0x1B] = {r=0,  g=118,b=40 },	[0x1C] = {r=0,  g=102,b=120},	[0x1D] = {r=0,  g=0,  b=0  },	[0x1E] = {r=0,  g=0,  b=0  },	[0x1F] = {r=0,  g=0,  b=0  },
	[0x20] = {r=236,g=238,b=236},	[0x21] = {r=76, g=154,b=236},	[0x22] = {r=120,g=124,b=236},	[0x23] = {r=176,g=98, b=236},	[0x24] = {r=228,g=84, b=236},	[0x25] = {r=236,g=88, b=180},	[0x26] = {r=236,g=106,b=100},	[0x27] = {r=212,g=136,b=32 },
	[0x28] = {r=160,g=170,b=0  },	[0x29] = {r=116,g=196,b=0  },	[0x2A] = {r=76, g=208,b=32 },	[0x2B] = {r=56, g=204,b=108},	[0x2C] = {r=56, g=180,b=204},	[0x2D] = {r=60, g=60, b=60 },	[0x2E] = {r=0,  g=0,  b=0  },	[0x2F] = {r=0,  g=0,  b=0  },
	[0x30] = {r=236,g=238,b=236},	[0x31] = {r=168,g=204,b=236},	[0x32] = {r=188,g=188,b=236},	[0x33] = {r=212,g=178,b=236},	[0x34] = {r=236,g=174,b=236},	[0x35] = {r=236,g=174,b=212},	[0x36] = {r=236,g=180,b=176},	[0x37] = {r=228,g=196,b=144},
	[0x38] = {r=204,g=210,b=120},	[0x39] = {r=180,g=222,b=120},	[0x3A] = {r=168,g=226,b=144},	[0x3B] = {r=152,g=226,b=180},	[0x3C] = {r=160,g=214,b=228},	[0x3D] = {r=160,g=162,b=160},	[0x3E] = {r=0,  g=0,  b=0  },	[0x3F] = {r=0,  g=0,  b=0  },
}

local COLORS_COLOR3: {[number]: Color3} = {}
for i, v in pairs(COLORS) do
    COLORS_COLOR3[i] = Color3.fromRGB(v.r, v.g, v.b)
end


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
    ["FineY"]               = 0b00000000000111,
    ["BitPlane"]            = 0b00000000001000,
    ["TileNumber"]          = 0b01111111110000,
    ["Half"]                = 0b10000000000000,
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



local SCANLINES_PER_FRAME = 262
local DOTS_PER_SCANLINE = 341

local m = {
    PALETTE_RAM_BASE = 0x3F00,
    NAMETABLE_RAM_BASE = 0x2000,

    SCANLINES_PER_FRAME = SCANLINES_PER_FRAME,
    DOTS_PER_SCANLINE = DOTS_PER_SCANLINE,
    DOTS_PER_FRAME = SCANLINES_PER_FRAME * DOTS_PER_SCANLINE,

    COLORS = COLORS,
    COLORS_COLOR3 = COLORS_COLOR3,

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
    }
}

return m