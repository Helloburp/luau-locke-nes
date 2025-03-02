local T_H = require(script.Parent.Parent.Core["Helpers.types"])
type Peripheral = T_H.Peripheral
type Bus = T_H.Bus
type u8 = T_H.u8
type u16 = T_H.u16

local h = require(script.Parent.Parent.Core.Helpers)

local T = require(script.Parent["RamState.types"])
type RamState = T.RamState


local m = {}

local WU8, RU8 = buffer.writeu8, buffer.readu8


function m.Copy(state: RamState): RamState
    return {
        PrgRam = if state.PrgRam
            then buffer.copy(buffer.create(0x2000), 0, state.PrgRam)
            else nil,
        ChrRam = if state.ChrRam
            then buffer.copy(buffer.create(0x2000), 0, state.ChrRam)
            else nil,
    }
end


function m.WithChrRam(state: RamState, mapperPeripheral: Peripheral): Peripheral
    
    local chrRam = state.ChrRam
    if not chrRam then return mapperPeripheral end

    local function _read(addr: u16)
        return RU8(chrRam, addr)
    end

    local function _write(addr: u16, data: u8)
        WU8(chrRam, addr, data)
        return true
    end

    h.MapPeripheral(
        mapperPeripheral,
        NumberRange.new(0x0000, 0x1FFF),
        { Read = _read, Write = _write }
    )

    return mapperPeripheral
end


function m.WithPrgRam(state: RamState, peripheral: Peripheral): Peripheral
    
    local prgRam = state.PrgRam
    if not prgRam then return peripheral end


    local function _read(addr: u16)
        return RU8(prgRam, addr - 0x6000)
    end

    local function _write(addr: u16, data: u8)
        WU8(prgRam, addr - 0x6000, data)
        return true
    end


    h.MapPeripheral(
        peripheral,
        NumberRange.new(0x6000, 0x7FFF),
        { Read = _read, Write = _write }
    )

    return peripheral
end


return m
