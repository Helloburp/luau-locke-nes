--!optimize 2

local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local Ppu = require(inst_components.PPU)
local h = require(inst_core.Helpers)
local Cpu = require(inst_components.CPU)
local Apu = require(inst_components.APU)

local T_CPU = require(inst_components["CPU.types"])
type CPU = T_CPU.CPU
type CPUState = T_CPU.State
type CPUClosure = T_CPU.CPUClosure


local T_PPU = require(inst_components["PPU.types"])
type PPU = T_PPU.PPU
type PPUState = T_PPU.State


local T_APU = require(inst_components["APU.types"])
type APUState = T_APU.State


local T_H = require(inst_core["Helpers.types"])
type Peripheral = T_H.Peripheral
type Bus = T_H.Bus
type u8 = T_H.u8
type u16 = T_H.u16
type ExecutionState = T_H.ExecutionState


local T = require(script.Parent["CPUPeripherals.types"])
type State = T.State
type ActiveDMAState = T.ActiveDMAState
type Ports = T.Ports


local LSHIFT = bit32.lshift
local RU8, WU8 = buffer.readu8, buffer.writeu8


local m = {}


function m.NewState(): State
    return {
        InternalRam = buffer.create(0x800),
        ActiveDMA = nil,
        APU = Apu.NewState(),
        ControllerLatch = false
    }
end


function m.CopyState(state: State): State
    return {
        InternalRam = h.CopyBuffer(state.InternalRam),
        ActiveDMA = state.ActiveDMA and table.clone(state.ActiveDMA) or nil,
        APU = Apu.CopyState(state.APU),
        ControllerLatch = state.ControllerLatch
    }
end


function m.NewBusFromState(
    ppuBus: Bus,
    ppuState: PPUState,
    state: State,
    portInterface: Ports,
    cartridgeCpuPeripheral: Peripheral,
    _nmi: () -> ()
)
    return _newBus(
        _newInternalRam(state.InternalRam),
        _newPpuRegisters(ppuState, ppuBus, _nmi),
        cartridgeCpuPeripheral,
        _newApuRegistersWrite(state.APU),
        _newOAMDMAWrite(state),
        _newPortLatchWrite(state, portInterface.ControllerLatchUpdate),
        _newControllerInputRead(portInterface)
    )
end


function m.NewClock2A03Closure(
    cpuPeripheralState: State,
    oldCpuState: CPUState,
    oam: buffer
): CPUClosure
    local cpuClosure = Cpu.NewClosure(oldCpuState)
    local executionState = cpuClosure.State.ExecutionState

    local _innerClock, _innerUpdateBus = cpuClosure.Clock, cpuClosure.UpdateBus
    local bus: Bus = h.NewBus()

    local _clock2A03 = function()
        if not cpuPeripheralState.ActiveDMA then
            _innerClock()
        elseif _clockDmaAndReturnIfFinished(
            cpuPeripheralState.ActiveDMA,
            executionState,
            bus,
            oam
        ) then
            cpuPeripheralState.ActiveDMA = nil
        end
    end

    cpuClosure.Clock = _clock2A03

    cpuClosure.UpdateBus = function(newBus: Bus)
        bus = newBus
        _innerUpdateBus(newBus)
    end


    return cpuClosure
end


-- CPU clock with added DMA logic.
function m.Clock2A03(state: State, cpuState: CPUState, cpuBus: Bus, oam: buffer)
    if not state.ActiveDMA then
        Cpu.Clock(cpuState, cpuBus)
    elseif _clockDmaAndReturnIfFinished(
        state.ActiveDMA,
        cpuState.ExecutionState,
        cpuBus,
        oam
    ) then
        state.ActiveDMA = nil
    end
end


function _newBus(
    internalRam: Bus,
    ppuRegisters: Peripheral,
    cartridgeCpuPeripheral: Peripheral,
    _apuWrite: (u16, u8) -> boolean,
    _oamDmaWrite: (u16, u8) -> true,
    _controllerLatchWrite: (u16, u8) -> true,
    _controllerInputRead: (u16) -> u8?
)
    -- h.MapPeripheral(bus, NumberRange.new(0x0000, 0x1FFF), internalRam)
    -- h.MapPeripheral(bus, NumberRange.new(0x2000, 0x3FFF), ppuRegisters)
    -- h.MapPeripheral(bus, NumberRange.new(0x4014), oamDma)
    -- h.MapPeripheral(bus, NumberRange.new(0x4016), controllerLatch)
    -- h.MapPeripheral(bus, NumberRange.new(0x4000, 0x4017), apuRegisters)
    -- h.MapPeripheral(bus, NumberRange.new(0x4016, 0x4017), controllerInput)

    local _iramRead, _iramWrite = internalRam.Read, internalRam.Write
    local _ppuRead, _ppuWrite =
        ppuRegisters.Read or error("Ppu Register peripheral must be readable"),
        ppuRegisters.Write or error("Ppu Register peripheral must be writable")

    local _cartRead, _cartWrite =
        cartridgeCpuPeripheral.Read or function() return nil end,
        cartridgeCpuPeripheral.Write or function() return false end

    return {
        Read = function(addr: u16): u8
            if addr > 0x4017 then
                return _cartRead(addr) or 0x00
            elseif addr < 0x2000 then
                return _iramRead(addr) or 0x00
            elseif addr < 0x4000 then
                return _ppuRead(addr) or 0x00
            elseif addr == 0x4016 or addr == 0x4017 then
                return _controllerInputRead(addr) or 0x00
            else
                return 0x00
            end
        end,
        Write = function(addr: u16, data: u8): true
            if addr > 0x4017 then
                return _cartWrite(addr, data) or true
            elseif addr < 0x2000 then
                return _iramWrite(addr, data) or true
            elseif addr < 0x4000 then
                return _ppuWrite(addr, data) or true
            else
                if _apuWrite(addr, data) then return true end
                if addr == 0x4014 then
                    return _oamDmaWrite(addr, data) or true
                elseif addr == 0x4016 then
                    return _controllerLatchWrite(addr, data) or true
                end
                return true
            end
        end
    }
end


function _clockDmaAndReturnIfFinished(
    dmaState: ActiveDMAState,
    cpuExecutionState: ExecutionState,
    cpuBus: Bus,
    oam: buffer
): boolean
    local isCpuClockEven = cpuExecutionState.Clock % 2 == 0
    cpuExecutionState.Clock += 1

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
        WU8(oam, dmaState.OAMAddr, dmaState.LastRead)
        dmaState.OAMAddr += 1
        return dmaState.OAMAddr > 255
    end
end


function _newOAMDMAWrite(state: State): (u16, u8) -> true
    local function _write(addr: u16, val: u8)
        state.ActiveDMA = {
            IdleCycleComplete = false,
            Page = val,
            OAMAddr = 0x00,
            LastRead = 0x00,
        }
        return true
    end

    return _write
end


function _newApuRegistersWrite(state: APUState): (u16, u8) -> boolean

    local function _write(addr: u16, data: u8)
        if addr == 0x4002 then
            state.Pulse1.Reg3 = data
        elseif addr == 0x4003 then
            state.Pulse1.Reg4 = data
        elseif addr == 0x4006 then
            state.Pulse2.Reg3 = data
        elseif addr == 0x4007 then
            state.Pulse2.Reg4 = data
        elseif addr == 0x400A then
            state.Triangle.Reg2 = data
        elseif addr == 0x400B then
            state.Triangle.Reg3 = data
        elseif addr == 0x400E then
            state.Noise.Reg2 = data
        end

        return false
    end

    return _write
end


function _newPpuRegisters(ppuState: PPUState, ppuBus: Bus, _nmi: () -> ()): (Peripheral)

    local executionState = ppuState.ExecutionState
    local regs, iRegs =
        ppuState.Registers, ppuState.InternalRegisters

    local function _offset(addr: u16)
        return addr%8
    end

    local function _read(addr: u16)
        local offset = _offset(addr)
        if offset == 2 then
            return Ppu.PpuStatusRead(regs, iRegs)
        elseif offset == 4 then
            return Ppu.OamDataRead(regs, ppuState.OAM)
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
            Ppu.OamDataWrite(regs, val, Ppu.GetScanlineInFrame(cyclesThisFrame), ppuState.OAM)
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


function _newInternalRam(b: buffer): Bus
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


function _newPortLatchWrite(
    state: State,
    _controllerLatchUpdate: (boolean) -> ()
): (u16, u8) -> true

    local function _write(_: u16, val: u8): true
        state.ControllerLatch = h.GetBit(0, val)
        _controllerLatchUpdate(state.ControllerLatch)
        return true
    end

    return _write
end


function _newControllerInputRead(portInterface: Ports): (u16) -> u8

    local function _read(addr: u16): u8
        return
            if addr == 0x4016 then portInterface.ReadPort1()
            elseif addr == 0x4017 then portInterface.ReadPort2()
            else error(`Invalid controller input address 0x{string.format("%X", addr)}`)
    end

    return _read
end


return m