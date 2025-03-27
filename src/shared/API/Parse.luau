local inst_root = script.Parent.Parent
local inst_core = inst_root.Core

local T_PARSE = require(script.Parent["Parse.types"])
type Header = T_PARSE.Header

local T = require(inst_core["Helpers.types"])
local h = require(inst_core.Helpers)
local m = {}

local _getBit = h.GetBit

type u8 = T.u8
type u16 = T.u16
type RomInterface = T_PARSE.RomInterface
type Rom = T_PARSE.Rom
type Mem = T.Bus

local T_RAMSTATE = require(script.Parent["RamState.types"])
type RamState = T_RAMSTATE.RamState



local RU8 = buffer.readu8
local RSHIFT, BAND = bit32.rshift, bit32.band

local PRG_ROM_BANK_SIZE = (2^14)
local CHR_MEM_BANK_SIZE = (2^13)


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


function m.RomInterface(rom: buffer): RomInterface
    local header = m.Header(rom)
    local prgBank0, prgBanks = m.PrgRomOffset(
        header.HasTrainer, 0
    ), header.PrgRom16kBankCount

    local chrBank0 = m.ChrMemOffset(
        header.HasTrainer, prgBanks, 0
    )

    local romAsTableBuffer = h.FillTableBuffer(
        h.NewTableBuffer(buffer.len(rom)), rom
    )

    return {
        PrgMem = h.MemoryInterfaceFromTableBufferWithOffset(romAsTableBuffer, prgBank0),
        ChrMem = h.MemoryInterfaceFromTableBufferWithOffset(romAsTableBuffer, chrBank0),

        TableBuffer = romAsTableBuffer,
        PrgBank0 = prgBank0,
        ChrBank0 = chrBank0
    }
end


function m.RamState(header: Header): RamState
    return {
        ChrRam = if header.ChrMemory._t == "Ram"
            then buffer.create(0x2000)
            else nil,
        PrgRam = if header.HasPersistentMemory
            then buffer.create(0x2000)
            else nil
    }
end


function m.FromBuffer(b: buffer): Rom
    return {
        Interface = m.RomInterface(b),
        Header = m.Header(b)
    }
end


return m