local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local T_H = require(inst_core["Helpers.types"])
type Peripheral = T_H.Peripheral
type u16 = T_H.u16
type u8 = T_H.u8
type Bus = T_H.Bus


local T_PPU = require(inst_components["PPU.types"])
type Regs = T_PPU.Registers

local T = require(script.Parent["PPUPeripherals.types"])
type State = T.State


local C_PPU = require(inst_components["PPU.constants"])
local PpuMask = C_PPU.BITFIELD_UTIL.PpuMask
local h = require(inst_core.Helpers)

local RU8, WU8 = buffer.readu8, buffer.writeu8
local BAND = bit32.band


local m = {}

function m.NewPaletteControl(regs: Regs, b: buffer): (Peripheral)
    assert(buffer.len(b) == 0x20)

    local function _offset(addr: u16)
        -- local offset = h.UnmirrorAddress(addr, 0x3F00, 0x20)
        local offset = (addr - 0x3F00)%0x20

        -- 0x3F00 and 3F10 refer to the same register.
        if offset%0x10 == 0 then offset = 0 end

        return offset
    end

    local function _read(addr: u16)
        local offset = _offset(addr)
        -- local isGreyscale = PpuMask.GetBit("Greyscale", regs.PPUMASK)
        local color = RU8(b, offset)
        -- return if not isGreyscale then color else BAND(color, 0x30)
        return if BAND(regs.PPUMASK, 0b00000001) == 0 then color else BAND(color, 0x30)
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _offset(addr), val)
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewVRam(
    _mirrorVRam: (u16) -> u16, b: buffer
): (Peripheral)
    assert(buffer.len(b) == 0x800)

    local function _read(addr: u16)
        return RU8(b, _mirrorVRam(addr))
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _mirrorVRam(addr), val)
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.MapPeripherals(
    bus: Bus,
    vram: Peripheral,
    paletteControl: Peripheral
)
    h.MapPeripheral(bus, NumberRange.new(0x2000, 0x2FFF), vram)
    h.MapPeripheral(bus, NumberRange.new(0x3F00, 0x3FFF), paletteControl)
end


function m.MapPeripheralsFromState(
    bus: Bus, ppuRegisters: Regs,
    _mirrorVRam: (u16) -> (u16),
    state: State
)
    m.MapPeripherals(
        bus,
        m.NewVRam(_mirrorVRam, state.VRam),
        m.NewPaletteControl(ppuRegisters, state.PaletteControl)
    )
end


function m.NewState(): State
    return {
        VRam = buffer.create(0x800),
        PaletteControl = buffer.create(0x20)
    }
end


function m.CopyState(state: State): State
    return {
        VRam = h.CopyBuffer(state.VRam),
        PaletteControl = h.CopyBuffer(state.PaletteControl)
    }
end


return m