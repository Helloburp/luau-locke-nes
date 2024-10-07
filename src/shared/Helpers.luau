

local T = require(script.Parent["Helpers.types"])
type u8 = T.u8
type u16 = T.u16
type Bus = T.Bus
type BitfieldFunctions<T> = T.BitfieldFunctions<T>
type Peripheral = T.Peripheral


local BAND, BOR, BNOT, LSHIFT, RSHIFT =
    bit32.band, bit32.bor, bit32.bnot, bit32.lshift, bit32.rshift


local m = {}


function m.SetBit(bitIndex: number, word: number, value: boolean): number
    local mask = LSHIFT(1, bitIndex)
    return if value
        then BOR(word, mask)
        else BAND(word, BNOT(mask))
end

function m.GetBit(bitIndex: number, word: number): boolean
    return BAND(word, LSHIFT(1, bitIndex)) > 0
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
    local c = 0
    while n%2 == 0 do
        n /= 2
        c += 1
    end
    return c
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


function m.NewBitfieldFunctions<EValue>(
    masks: {[EValue]: number}
): BitfieldFunctions<EValue>
    local offsets: {[EValue]: number} = {}
    for i, v in pairs(masks) do offsets[i] = m.TrailingZeroesBase2(v) end

    local function _get(valueType: EValue, bitfield: number)
        return m.GetValueFromBitfield(bitfield, masks[valueType], offsets[valueType])
    end

    local function _set(valueType: EValue, bitfield: number, value: number)
        return m.SetValueInBitfield(bitfield, masks[valueType], offsets[valueType], value)
    end

    local function _compose(vals: {[EValue]: number})
        local bitfield = 0
        for valueType, value in pairs(vals) do
            _set(valueType, bitfield, value)
        end
        return bitfield
    end

    return {Get = _get, Set = _set, Compose = _compose}
end


function m.MapReadToBus(
    bus: Bus, addressRange: NumberRange, _read: (u16) -> (u8?)
)
    local min, max = addressRange.Min, addressRange.Max
    local _oldRead = bus.Read

    bus.Read = function(addr: u16): number
        if addr >= min and addr <= max then
            return _read(addr) or _oldRead(addr)
        end
        return _oldRead(addr)
    end
end


function m.MapWriteToBus(
    bus: Bus, addressRange: NumberRange, _write: (u16, u8) -> (boolean)
)
    local min, max = addressRange.Min, addressRange.Max
    local _oldWrite = bus.Write

    bus.Write = function(addr: u16, val: u8): true
        if addr >= min and addr <= max then
            return _write(addr, val) or _oldWrite(addr, val)
        end
        return _oldWrite(addr, val)
    end
end


function m.MapPeripheral(
    bus: Bus, addressRange: NumberRange, peripheral: Peripheral
)
    local _read, _write = peripheral.Read, peripheral.Write
    if _read then m.MapReadToBus(bus, addressRange, _read) end
    if _write then m.MapWriteToBus(bus, addressRange, _write) end
end


function m.NewDebugBus(): Bus
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


function m.NewBus(): Bus
    return {
        Read = function() return 0x00 end,
        Write = function(val: u8) return true end
    }
end


return m