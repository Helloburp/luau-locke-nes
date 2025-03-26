--!optimize 2
local inst_root = script.Parent.Parent
local inst_core = inst_root.Core
local inst_components = inst_root.Components

local Ppu = require(inst_components.PPU)

local Cpu = setmetatable({
    Instructions = require(inst_components.CPU.Instructions),
    AddressingModes = require(inst_components.CPU.AddressingModes)
}, {__index = require(inst_components.CPU)}) 

local CpuPeripherals = require(script.Parent.CPUPeripherals)
local PpuPeripherals = require(script.Parent.PPUPeripherals)

local h = require(inst_core.Helpers)

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16


type Peripheral = T_H.Peripheral

local T = require(script.Parent["NES.types"])
type NES = T.NES
type Cartridge = T.Cartridge
type State = T.State
type Display = T.Display
type NesClosure = T.NesClosure


local T_CPUP = require(script.Parent["CPUPeripherals.types"])
type Ports = T_CPUP.Ports



local m = {}

function m.NewClosure(nes: NES): NesClosure

    local _ppuClock, _ppuClockThree = nes.PpuClosure.Clock, nes.PpuClosure.ClockThree
    local _clock2A03 = nes.CpuClosure.Clock

    local nesState = nes.State
    
    local function _clock()
        _ppuClock()

        -- An offset of 1 allows for accurate syncronization.
        if (nesState.Clock + 1)%3 == 0 then
            _clock2A03()
        end

        nesState.Clock += 1
    end

    local function _clockThreeAligned()
        _ppuClockThree()
        _clock2A03()

        nesState.Clock += 3
    end

    local function _clockCycles(cyclesRemaining: number)
        assert(cyclesRemaining == math.floor(cyclesRemaining), "Cycles must be an Integer")

        while (nesState.Clock)%3 > 0 do
            _clock()
            cyclesRemaining -= 1
        end
        while cyclesRemaining >= 3 do
            _clockThreeAligned()
            cyclesRemaining -= 3
        end
        while cyclesRemaining > 0 do
            _clock()
            cyclesRemaining -= 1
        end
    end

    return {
        Clock = _clock,
        ClockCycles = _clockCycles
    }
end

-- Clock amounts divided by 4 (common denominator)
function m.Clock(nes: NES)
    nes.PpuClosure.Clock()

    -- An offset of 1 allows for accurate syncronization.
    if (nes.State.Clock + 1)%3 == 0 then
        CpuPeripherals.Clock2A03(
            nes.State.CpuPeripherals, nes.State.Cpu, nes.CpuBus, nes.State.Ppu.OAM
        )
    end

    nes.State.Clock += 1
end


function m.NewState(): State
    return {
        Cpu = Cpu.NewState(),
        CpuPeripherals = CpuPeripherals.NewState(),
        Ppu = Ppu.NewState(),
        PpuPeripherals = PpuPeripherals.NewState(),
        Clock = 0
    }
end


function m.CopyState(state: State): State
    return {
        Cpu = Cpu.CopyState(state.Cpu),
        CpuPeripherals = CpuPeripherals.CopyState(state.CpuPeripherals),
        Ppu = Ppu.CopyState(state.Ppu),
        PpuPeripherals = PpuPeripherals.CopyState(state.PpuPeripherals),
        Clock = state.Clock
    }
end


function m.New(
    displayInterface: Display,
    portInterface: Ports,
    cartridge: Cartridge,
    oldState: State
): NES
    local nes: NES
    local cpuBus = h.NewBus()
    local ppuBus = h.NewBus()
    local state = m.CopyState(oldState)

    -- The cartridge can effectively map & observe all reads and writes.
    h.MapPeripheral(cpuBus, nil, cartridge.CpuPeripheral)
    h.MapPeripheral(ppuBus, nil, cartridge.PpuPeripheral)

    local function _nmi()
        nes.State.Cpu.NMIInput = true
    end


    local ppuClosure = Ppu.NewClosure(
        oldState.Ppu,
        displayInterface.ScreenBuffer,
        displayInterface.COLORS_U32,
        function() error("Unimplemented") end,
        _nmi,
        displayInterface.OnFrameComplete,
        cartridge.OnScanline or function() end
    )

    state.Ppu = ppuClosure.State


    local cpuClosure = CpuPeripherals.NewClock2A03Closure(
        state.CpuPeripherals,
        oldState.Cpu,
        state.Ppu.OAM
    )
    state.Cpu = cpuClosure.State


    CpuPeripherals.MapPeripheralsFromState(
        cpuBus, ppuBus, state.Ppu, state.CpuPeripherals, portInterface, _nmi
    )

    PpuPeripherals.MapPeripheralsFromState(
        ppuBus,
        state.Ppu.Registers,
        state.Ppu.PaletteControl,
        cartridge.MirrorVRam,
        state.PpuPeripherals
    )

    ppuClosure.UpdateRead(ppuBus.Read)
    cpuClosure.UpdateBus(cpuBus)

    nes = {
        CpuClosure = cpuClosure,
        PpuClosure = ppuClosure,
        CpuBus = cpuBus,
        PpuBus = ppuBus,

        State = state,

        Clock = 0
    }

    return nes
end


-- Not complete/accurate. Just used for starting programs
function m.Reset<T>(nes: NES)
    nes.State.Cpu.Registers.PC = h.ReadAddressFromVector(nes.CpuBus, 0xFFFC)
end

return m