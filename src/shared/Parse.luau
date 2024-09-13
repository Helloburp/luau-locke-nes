local T = require(script.Parent._TYPES)
local h = require(script.Parent.Helpers)
local m = {}

type u8 = T.u8
type Header = string
type Rom = string

type HeaderFlags = {
    PrgRom16kBankCount: u8,
    ChrMemory: {
        _t: "Rom",
        ChrRom8kBankCount: u8,
    } | {_t: "Ram"},

    HasTrainer: boolean
}

local PATTERN_BYTE = "%x.-%x"
local PATTERN_8KB = string.rep(PATTERN_BYTE, 8 * 1024)
local PATTERN_16KB = string.rep(PATTERN_BYTE, 16 * 1024)

m.HexBytesIter = function(str: string) return string.gmatch("%x.-%x", str) end

function m.PickByte(str: string, index: number): T.u8
    for i, byteStr in m.HexBytesIter(str) do
        if i - 1 == index then
            return tonumber(byteStr, 16)
                or error(`Corrupted rom: byte {i - 1} is not a number!`)
        end
    end

    error(`Index {index} out of range for string!`)
end

function m.Header(rom: Rom): Header
    local header = ""
    for i, byteStr in m.HexBytesIter(rom) do
        if i > 16 then break end
    end
    return header
end

function m.Flags(header: Header): HeaderFlags
    local flags = {}
    local prgRomSize = m.PickByte(header, 4)
    local chrRomSize = m.PickByte(header, 5)
    local b6 = m.PickByte(header, 6)

    flags.HasTrainer = h.GetBit(3, b6)
    flags.PrgRom16kBankCount = prgRomSize
    flags.ChrMemory = if chrRomSize == 0
        then {_t = "Ram"}
        else {_t = "Rom", ChrRom8kBankCount = chrRomSize}

    return flags
end


return m