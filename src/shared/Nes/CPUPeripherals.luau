--!optimize 2

local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local Ppu = require(inst_components.PPU)
local h = require(inst_core.Helpers)

local Cpu = require(inst_components.CPU)

local T_CPU = require(inst_components["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(inst_components["PPU.types"])
type PPU = T_PPU.PPU

local T_H = require(inst_core["Helpers.types"])
type Peripheral = T_H.Peripheral
type Bus = T_H.Bus
type u8 = T_H.u8
type u16 = T_H.u16


local T = require(script.Parent["CPUPeripherals.types"])
type State = T.State
type ActiveDMAState = T.ActiveDMAState


local LSHIFT = bit32.lshift
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


function m.MapPeripheralsFromState(
    cpuBus: Bus, ppuBus: Bus, ppu: PPU, state: State
)
    m.MapPeripherals(
        cpuBus,
        m.NewInternalRam(state.InternalRam),
        m.NewPpuRegisters(ppu, ppuBus),
        m.NewOAMDMA(state)
    )
end


function m.ClockDmaAndReturnIfFinished(
    dmaState: ActiveDMAState,
    isCpuClockEven: boolean,
    cpuBus: Bus,
    oam: buffer
): boolean
    if not dmaState.IdleCycleComplete then
        if not isCpuClockEven then
            dmaState.IdleCycleComplete = true
        end
        return false
    end

    if isCpuClockEven then
        dmaState.LastRead = cpuBus.Read(
            LSHIFT(dmaState.Page, 8) + dmaState.OAMAddr
        )
        return false
    else
        RU8(oam, dmaState.OAMAddr, dmaState.LastRead)
        dmaState.OAMAddr += 1
        return dmaState.OAMAddr > 255
    end
end


function m.NewOAMDMA(state: State): (Peripheral)
    local function _write(addr: u16, val: u8)
        state.ActiveDMA = {
            IdleCycleComplete = false,
            Page = val,
            OAMAddr = 0x00,
            LastRead = 0x00,
        }
        return true
    end

    return {
        Write = _write
    }
end


-- CPU clock with added DMA logic.
function m.Clock2A03(state: State, cpu: CPU, cpuBus: Bus, oam: buffer)
    if not state.ActiveDMA then
        Cpu.Clock(cpu, cpuBus)
    elseif m.ClockDmaAndReturnIfFinished(
        state.ActiveDMA,
        cpu.State.ExecutionState.Clock % 2 == 0,
        cpuBus,
        oam
    ) then
        state.ActiveDMA = nil
    end
end


function m.NewPpuRegisters(ppu: PPU, ppuBus: Bus): (Peripheral)

    local iState, executionState, _nmi =
        ppu.State, ppu.State.ExecutionState, ppu.TriggerNmi
    
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
            return Ppu.PpuDataRead(ppuBus, regs, iRegs)
        end

        return nil
    end

    local function _write(addr: u16, val: u8)
        local offset, cyclesThisFrame =
            _offset(addr), executionState.Cycles

        if offset == 0 then
            local shouldNmi = Ppu.PpuCtrlWriteAndReturnNmi(
                regs, iRegs, val, Ppu.GetScanlineInFrame(cyclesThisFrame)
            )
            if shouldNmi then
                _nmi()
            end
        elseif offset == 1 then
            Ppu.PpuMaskWrite(regs, val)
        elseif offset == 3 then
            Ppu.OamAddrWrite(regs, val)
        elseif offset == 4 then
            Ppu.OamDataWrite(regs, val, Ppu.GetScanlineInFrame(cyclesThisFrame), iState.OAM)
        elseif offset == 5 then
            Ppu.PpuScrollWrite(iRegs, val)
        elseif offset == 6 then
            Ppu.PpuAddrWrite(iRegs, val)
        elseif offset == 7 then
            Ppu.PpuDataWrite(ppuBus, regs, iRegs, val)
        end

        return true
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewInternalRam(b: buffer): (Peripheral)
    assert(buffer.len(b) == 0x800)

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


function m.NewState(): State
    return {
        InternalRam = buffer.create(0x800),
        ActiveDMA = nil
    }
end


function m.CopyState(state: State): State
    return {
        InternalRam = h.CopyBuffer(state.InternalRam)
    }
end


return m