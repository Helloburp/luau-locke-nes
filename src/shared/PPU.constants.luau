local h = require(script.Parent.Helpers)
local T = require(script.Parent["PPU.types"])
type u8 = T.u8
type u16 = T.u16
type EVRamAddressComponent = T.EVRamAddressComponent

local m = {}


local VRAM_ADDR_MASKS: {[EVRamAddressComponent]: number} = {
    ["X"] = 0b000000000011111,
    ["Y"] = 0b000001111100000,
    ["N"] = 0b000110000000000,
    ["y"] = 0b111000000000000,
}

local VRAM_ADDR_COMPONENT_OFFSETS: {[EVRamAddressComponent]: number} = {}
for k, v in pairs(VRAM_ADDR_MASKS) do
    VRAM_ADDR_COMPONENT_OFFSETS[k] = h.TrailingZeroesBase2(v)
end


return m