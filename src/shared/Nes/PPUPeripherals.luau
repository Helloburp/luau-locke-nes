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

local h = require(inst_core.Helpers)

local RU8, WU8 = buffer.readu8, buffer.writeu8
local BAND = bit32.band

local PPUMASK_MASK_isGreyscale = C_PPU.PPUMASK_MASKS["Greyscale" :: T_PPU.EPpuMaskFlag]

local m = {}


function m.NewPaletteControl(regs: Regs, t: {u8}): Bus
    assert(#t == 0x20)

    local function _offset(addr: u16)
        -- local offset = h.UnmirrorAddress(addr, 0x3F00, 0x20)
        local offset = (addr - 0x3F00)%0x20

        -- 0x3F00 and 3F10 refer to the same register.
        if offset%0x10 == 0 then offset = 0 end

        return offset
    end

    local function _read(addr: u16)
        local offset = _offset(addr)
        local color = t[offset + 1]
        return BAND(regs.PPUMASK, PPUMASK_MASK_isGreyscale) == 0 and color or BAND(color, 0x30)
    end

    local function _write(addr: u16, val: u8)
        t[_offset(addr) + 1] = val
        return true
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewVRam(
    _mirrorVRam: (u16) -> u16, b: buffer
): Bus
    assert(buffer.len(b) == 0x800)

    local function _read(addr: u16)
        return RU8(b, _mirrorVRam(addr))
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _mirrorVRam(addr), val)
        return true
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewBus(
    vram: Bus,
    paletteControl: Bus,
    cartridgePpuPeripheral: Peripheral
): Bus
    local _readVram, _writeVram = vram.Read, vram.Write
    local _readPalette, _writePalette = paletteControl.Read, paletteControl.Write
    local _readCart, _writeCart =
        cartridgePpuPeripheral.Read or function() return nil end,
        cartridgePpuPeripheral.Write or function() return false end

    -- h.MapPeripheral(bus, NumberRange.new(0x2000, 0x2FFF), vram)
    -- h.MapPeripheral(bus, NumberRange.new(0x3F00, 0x3FFF), paletteControl)
    return {
        Read = function(addr: u16)
            return _readCart(addr) or
                if addr >= 0x2000 and addr < 0x3000 then _readVram(addr)
                elseif addr >= 0x3F00 and addr < 0x4000 then _readPalette(addr)
                else nil
        end,
        Write = function(addr: u16, data: u8)
            return _writeCart(addr, data) or
                if addr >= 0x2000 and addr < 0x3000 then _writeVram(addr, data)
                elseif addr >= 0x3F00 and addr < 0x4000 then _writePalette(addr, data)
                else false
        end
    }
end


function m.NewBusFromState(
    ppuRegisters: Regs,
    paletteControl: {u8},
    cartridgePpuPeripheral: Peripheral,
    _mirrorVRam: (u16) -> (u16),
    state: State
)
    return m.NewBus(
        m.NewVRam(_mirrorVRam, state.VRam),
        m.NewPaletteControl(ppuRegisters, paletteControl),
        cartridgePpuPeripheral
    )
end


function m.NewState(): State
    return {
        VRam = buffer.create(0x800),
    }
end


function m.CopyState(state: State): State
    return {
        VRam = h.CopyBuffer(state.VRam),
    }
end


return m