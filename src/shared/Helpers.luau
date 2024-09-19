

local T = require(script.Parent["CPU.types"])
type Regs = T.Registers
type u8 = T.u8
type u16 = T.u16
type Bus = T.Bus

local BAND, BOR, BNOT, LSHIFT, RSHIFT =
    bit32.band, bit32.bor, bit32.bnot, bit32.lshift, bit32.rshift

local C = require(script.Parent["CPU.constants"])

local m = {}

function _flagToBitIndex(flag: T.EStatusFlag)
    local bitIndex = table.find(C.StatusFlagOrder, flag)
        or error(`Invalid flag input: {flag}`)
    bitIndex -= 1
    return bitIndex
end


function m.SetBit(bitIndex: number, word: number, value: boolean): number
    local mask = LSHIFT(1, bitIndex)
    return if value
        then BOR(word, mask)
        else BAND(word, BNOT(mask))
end

function m.GetBit(bitIndex: number, word: number): boolean
    return BAND(word, LSHIFT(1, bitIndex)) > 0
end

function m.SetFlag(flag: T.EStatusFlag, regs: Regs, value: boolean): Regs
    regs.STATUS = m.SetBit(_flagToBitIndex(flag), regs.STATUS, value)
    return regs
end


function m.GetFlag(flag: T.EStatusFlag, status: u8): boolean
    return m.GetBit(_flagToBitIndex(flag), status)
end

function m.WrapU8(word: number): u8
    return word%256
end

function m.WrapU16(word: number): u16
    return word%65536
end

function m.Signed8ToSigned16(val: u8): u16
    return if val > 127 then BOR(val, 0xFF00) else val
end


--[[
    Takes an address on the bus in a mirrored range and converts it into
    a valid memory index of the associated device.
    0 <= result < realRangeLength
    mirroredRangeStartAddr <= addr
]]
function m.UnmirrorAddress(
    addr: u16,
    mirroredRangeStartAddr: u16,
    realRangeLength: u16
)
    return (addr - mirroredRangeStartAddr)%realRangeLength
end


--[[
    Counts the numbers of trailing zeroes for a binary number
]]
function m.TrailingZeroesBase2(n: number): number
    while n%2 == 0 do n /= 2 end
    return n
end


function m.GetValueFromBitfield(bitfield: number, mask: number, offset: number): number
    return RSHIFT(BAND(bitfield, mask), offset)
end


function m.SetValueInBitfield(
    bitfield: number,
    mask: number,
    offset: number,
    value: number
): number
    return BAND(bitfield, BNOT(mask)) + LSHIFT(value, offset)
end


function m.NewRegisters(): Regs
    return {
        A = 0, X = 0, Y = 0,
        PC = 0xFFFC, SP = 0xFD,
        STATUS = 0b00100100     -- Interrupt and unused set to 1
    }
end


-- Memory used for testing purposes
function m.NewBus(): Bus
    local t = {}
    return {
        Read = function(i)
            assert(i%0x10000 == i, `Value "{i}" is not within a two-byte range.`)
            return t[i] or 0x00
        end,
        Write = function(i, v)
            assert(i%0x10000 == i, `Value "{i}" is not within a two-byte range.`)
            assert(v%256 == v, `Value "{v}" is not within a byte range.`)
            t[i] = v
        end
    }
end

return m