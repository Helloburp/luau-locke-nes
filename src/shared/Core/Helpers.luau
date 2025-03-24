--!optimize 2


local T = require(script.Parent["Helpers.types"])
type u8 = T.u8
type u16 = T.u16
type Bus = T.Bus
type BitfieldFunctions<T> = T.BitfieldFunctions<T>
type Peripheral = T.Peripheral
type TableBuffer = T.TableBuffer


local BAND, BOR, BNOT, LSHIFT, RSHIFT =
    bit32.band, bit32.bor, bit32.bnot, bit32.lshift, bit32.rshift

local RU8, WU8 = buffer.readu8, buffer.writeu8


local TABLE_BUFFER_DEBUG_METATABLE = {
    __newindex = function(t, k, v)
        error(`Table buffer access out of bounds:`)
    end,
    __index = function(t, k, v)
        error(`Table buffer access out of bounds:`)
    end
}


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


function m.NewGetInBufferWithAlignment(
    alignmentSize: number,
    offset: number
): (b: buffer, objIndex: u8) -> (u8)
    return function(b: buffer, objIndex: u8)
        return RU8(b, objIndex * alignmentSize + offset)
    end
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


-- Credit: https://stackoverflow.com/q/2602823
function m.ReverseBitOrderU8(w: u8)
    w = RSHIFT(BAND(w, 0xF0), 4) + LSHIFT(BAND(w, 0x0F), 4)
    w = RSHIFT(BAND(w, 0xCC), 2) + LSHIFT(BAND(w, 0x33), 2)
    w = RSHIFT(BAND(w, 0xAA), 1) + LSHIFT(BAND(w, 0x55), 1)
    return w
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


function _getValueFromBitfield(bitfield: number, mask: number, offset: number): number
    return RSHIFT(BAND(bitfield, mask), offset)
end


function _setValueInBitfield(
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
        return _getValueFromBitfield(bitfield, masks[valueType], offsets[valueType])
    end

    local function _getBit(valueType: EValue, bitfield: number)
        return _get(valueType, bitfield) > 0
    end

    local function _set(valueType: EValue, bitfield: number, value: number)
        return _setValueInBitfield(bitfield, masks[valueType], offsets[valueType], value)
    end

    local function _setBit(valueType: EValue, bitfield: number, value: boolean)
        return _set(valueType, bitfield, if value then 1 else 0)
    end

    local function _compose(vals: {[EValue]: number})
        local bitfield = 0
        for valueType, value in pairs(vals) do
            bitfield = _set(valueType, bitfield, value)
        end
        return bitfield
    end

    return {
        Get = _get, Set = _set,
        GetBit = _getBit, SetBit = _setBit,
        Compose = _compose
    }
end


-- E.g, reset vector, in little endian.
function m.ReadAddressFromVector(bus: Bus, vector: u16): u16
    return bus.Read(vector) + LSHIFT(bus.Read(m.WrapU16(vector + 1)), 8)
end


function m.MapReadToMemory(
    bus: Peripheral, addressRange: NumberRange?, _read: (u16) -> (u8?)
)
    local _oldRead = bus.Read or function() return nil end

    if not addressRange then
        bus.Read = function(addr: u16): number
            return _read(addr) or _oldRead(addr)
        end
        return
    end

    local min, max = addressRange.Min, addressRange.Max

    bus.Read = function(addr: u16): number
        if addr >= min and addr <= max then
            return _read(addr) or _oldRead(addr)
        end
        return _oldRead(addr)
    end
end


function m.MapWriteToMemory(
    bus: Peripheral, addressRange: NumberRange?, _write: (u16, u8) -> (boolean)
)
    local _oldWrite = bus.Write or function() return false end

    if not addressRange then
        bus.Write = function(addr: u16, val: u8)
            return _write(addr, val) or _oldWrite(addr, val)
        end
        return
    end

    local min, max = addressRange.Min, addressRange.Max

    bus.Write = function(addr: u16, val: u8): true
        if addr >= min and addr <= max then
            return _write(addr, val) or _oldWrite(addr, val)
        end
        return _oldWrite(addr, val)
    end
end


function m.MapPeripheral(
    bus: Peripheral, addressRange: NumberRange?, peripheral: Peripheral
)
    local _read, _write = peripheral.Read, peripheral.Write
    if _read then m.MapReadToMemory(bus, addressRange, _read) end
    if _write then m.MapWriteToMemory(bus, addressRange, _write) end
end


function m.CopyBuffer(b: buffer): buffer
    local newBuffer = buffer.create(buffer.len(b))
    buffer.copy(newBuffer, 0, b)
    return newBuffer
end


function m.MemoryInterfaceFromBufferWithOffset(b: buffer, offset: number): Bus
    return {
        Read = function(addr: u16) return RU8(b, offset + addr) end,
        Write = function(addr: u16, data: u8) return WU8(b, offset + addr, data) end
    }
end

function m.MemoryInterfaceFromTableBufferWithOffset(t: TableBuffer, offset: number): Bus
    return {
        Read = function(addr: u16) return t[offset + addr] end,
        Write = function(addr: u16, data: u8) t[offset + addr] = data end
    }
end


function m.NewTableBuffer(size: number, initialValue: number?): TableBuffer
    local t = table.create(size - 1, initialValue or 0x00)
    t[0] = initialValue or 0x00
    -- setmetatable(t, TABLE_BUFFER_DEBUG_METATABLE)
    return t
end


function m.FillTableBuffer(t: TableBuffer, b: buffer, offset: number?, size: number?)
    for i = 0, (size or buffer.len(b)) - 1 do
        t[i] = RU8(b, (offset or 0) + i)
    end
    return t
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

m.SetValueInBitfield = _setValueInBitfield
m.GetValueFromBitfield = _getValueFromBitfield

return m