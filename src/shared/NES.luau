local root = script.Parent

local Ppu = require(root.PPU)
local Cpu = require(root.CPU)
local CpuPeripherals = require(root.CPUPeripherals)

local Instructions = require(root.Instructions)
local AddressingModes = require(root.AddressingModes)

local h = require(root.Helpers)

local T_H = require(root["Helpers.types"])
type u8 = T_H.u8
type Peripheral = T_H.Peripheral

local T = require(root["NES.types"])
type NES = T.NES
type Cartridge = T.Cartridge

local m = {}


function m.Clock(nes: NES)
    if nes.Clock%12 == 0 then
        Cpu.Clock(nes.Cpu, nes.CpuBus)
    end
    if nes.Clock%4 == 0 then
        Ppu.Clock(nes.Ppu, nes.PpuBus)
    end

    nes.Clock += 1
end


function m.New(
    _onFrameComplete: () -> (),
    _setPixelForPpuCycle: (cycleInFrame: number, color: u8) -> (),
    cartridge: Cartridge
): NES
    local nes: NES
    local cpuBus = h.NewBus()
    local ppuBus = h.NewBus()

    -- The cartridge can effectively map & observe all reads and writes.
    h.MapPeripheral(cpuBus, nil, cartridge.CpuPeripheral)
    h.MapPeripheral(ppuBus, nil, cartridge.PpuPeripheral)

    local function _nmi()
        nes.Cpu.NMIInput = true
    end


    local cpu = Cpu.New(AddressingModes, Instructions)
    local ppu = Ppu.New(_nmi, _onFrameComplete, _setPixelForPpuCycle)

    CpuPeripherals.MapPeripherals(
        cpuBus,
        CpuPeripherals.NewInternalRam(),
        CpuPeripherals.NewPpuRegisters(ppu, ppuBus),
        CpuPeripherals.NewOAMDMA(cpuBus, ppu.InternalState.OAM)
    )

    Ppu.MapPeripherals(
        ppuBus,
        Ppu.NewVRam(cartridge.GetIsMirroringVertical),
        Ppu.NewPaletteControl(ppu.InternalState.Registers)
    )

    nes = {
        Cpu = cpu,
        Ppu = ppu,
        CpuBus = cpuBus,
        PpuBus = ppuBus,

        Clock = 0
    }

    return nes
end

return m