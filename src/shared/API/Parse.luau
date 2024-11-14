local inst_root = script.Parent.Parent
local inst_core = inst_root.Core

local T_PARSE = require(script.Parent["Parse.types"])
type Header = T_PARSE.Header

local T = require(inst_core["Helpers.types"])
local h = require(inst_core.Helpers)
local m = {}

local _getBit = h.GetBit

type u8 = T.u8

local WU8, RU8 = buffer.writeu8, buffer.readu8
local RSHIFT, LSHIFT, BAND = bit32.rshift, bit32.lshift, bit32.band

local PRG_ROM_BANK_SIZE = (2^14)
local CHR_MEM_BANK_SIZE = (2^13)

function _hexStrBytes(str: string) return string.gmatch(str, "(%x).-(%x)") end

function m.HexStrToBuffer(str: string): buffer
    local values = {}
    for hiNibble, loNibble in _hexStrBytes(str) do
        local val = LSHIFT(tonumber(hiNibble, 16), 4) + tonumber(loNibble, 16)
        table.insert(values, val)
    end

    local b = buffer.create(#values)
    for i, v in ipairs(values) do
       WU8(b, i - 1, v)
    end

    return b
end


function m.Header(rom: buffer): Header
    local flags = {} :: Header
    local prgRomSize = RU8(rom, 4)
    local chrRomSize = RU8(rom, 5)
    local flags6, flags7, flags9 = RU8(rom, 6), RU8(rom, 7), RU8(rom, 9)

    flags.HasPersistentMemory = _getBit(1, flags6)
    flags.HasTrainer = _getBit(2, flags6)
    flags.PrgRom16kBankCount = prgRomSize
    flags.ChrMemory = if chrRomSize == 0
        then {_t = "Ram"}
        else {_t = "Rom", ChrRom8kBankCount = chrRomSize}
    
    flags.NametableArrangement = if _getBit(3, flags6)
        then "Alternative"
        else (if _getBit(0, flags6) then "Vertical" else "Horizontal")
    
    flags.MapperId = RSHIFT(flags6, 4) + BAND(flags7, 0xF0)

    flags.TVSystem = if flags9 == 1 then "PAL" else "NTSC"

    return flags
end


-- Bank offset starts at 0
function m.PrgRomOffset(hasTrainer: boolean, bankOffset: number): number
    return 16 + (if hasTrainer then 512 else 0) + PRG_ROM_BANK_SIZE * bankOffset
end


function m.ChrMemOffset(
    hasTrainer: boolean,
    prgRomBanks: number,
    bankOffset: number
): number
    return m.PrgRomOffset(hasTrainer, prgRomBanks)
        + CHR_MEM_BANK_SIZE * bankOffset
end


return m