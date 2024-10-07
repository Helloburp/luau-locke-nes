
local Ppu = require(script.Parent.PPU)
local Cpu = require(script.Parent.CPU)
local h = require(script.Parent.Helpers)

local T_CPU = require(script.Parent["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(script.Parent["PPU.types"])
type PPU = T_PPU.PPU

local T_H = require(script.Parent["Helpers.types"])
type Peripheral = T_H.Peripheral
type Bus = T_H.Bus
type u8 = T_H.u8
type u16 = T_H.u16


local RU8, WU8 = buffer.readu8, buffer.writeu8


local m = {}


function m.MapPeripherals(
    bus: Bus,
    internalRam: Peripheral,
    ppuRegisters: Peripheral,
    oamDma: Peripheral
)
    h.MapPeripheral(bus, NumberRange.new(0x0000, 0x1FFF), internalRam)
    h.MapPeripheral(bus, NumberRange.new(0x2000, 0x3FFF), ppuRegisters)
    h.MapPeripheral(bus, NumberRange.new(0x4014), oamDma)
end


function m.NewOAMDMA(cpuBus: Bus, oam: buffer): (Peripheral)
    local function _write(addr: u16, val: u8)
        return false
    end

    return {
        Write = _write
    }
end


function m.NewPpuRegisters(ppu: PPU, bus: Bus): (Peripheral)

    local iState, executionState, _nmi =
        ppu.InternalState, ppu.ExecutionState, ppu.TriggerNmi
    
    local regs, iRegs =
        iState.Registers, iState.InternalRegisters

    local function _offset(addr: u16)
        return addr%8
    end

    local function _read(addr: u16)
        local offset = _offset(addr)
        if offset == 2 then
            return Ppu.PpuStatusRead(regs, iRegs)
        elseif offset == 4 then
            return Ppu.OamDataRead(regs, iState.OAM)
        elseif offset == 7 then
            return Ppu.PpuDataRead(bus, regs, iRegs)
        end

        return nil
    end

    local function _write(addr: u16, val: u8)
        local offset, cyclesThisFrame =
            _offset(addr), executionState.Cycles

        if offset == 0 then
            local shouldNmi = Ppu.PpuCtrlWriteAndReturnNmi(
                regs, val, cyclesThisFrame
            )
            if shouldNmi then
                _nmi()
            end
        elseif offset == 1 then
            Ppu.PpuMaskWrite(regs, val)
        elseif offset == 3 then
            Ppu.OamAddrWrite(regs, val)
        elseif offset == 4 then
            Ppu.OamDataWrite(regs, val, cyclesThisFrame, iState.OAM)
        elseif offset == 5 then
            Ppu.PpuScrollWrite(iRegs, val)
        elseif offset == 6 then
            Ppu.PpuAddrWrite(iRegs, val)
        elseif offset == 7 then
            Ppu.PpuDataWrite(bus, regs, iRegs, val)
        end

        return true
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewInternalRam(): (Peripheral)
    local b = buffer.create(0x800)

    local function _offset(addr: u16)
        return addr%0x800
    end

    local function _read(addr: u16)
        return RU8(b, _offset(addr))
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _offset(addr), val)
        return true
    end

    return {
        Read = _read,
        Write = _write
    }
end


return m