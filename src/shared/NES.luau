local root = script.Parent

local Ppu = require(root.PPU)
local Cpu = require(root.CPU)
local CpuPeripherals = require(root.CPUPeripherals)

local Instructions = require(root.Instructions)
local AddressingModes = require(root.AddressingModes)

local h = require(root.Helpers)

local T_H = require(root["Helpers.types"])
type u8 = T_H.u8

local T = require(root["NES.types"])
type NES = T.NES


local m = {}


function m.Clock(nes: NES)
    -- TODO: NMI handling
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
    _setPixel: (i: number, color: u8) -> ()
): NES
    local nes
    local cpuBus = h.NewBus()
    local ppuBus = h.NewBus()

    local function _nmi()
        nes.NmiSet = true
    end


    local function _getIsMirroringVertical()
        return true
    end


    local cpu = Cpu.New(AddressingModes, Instructions)
    local ppu = Ppu.New(_nmi, _onFrameComplete, _setPixel)

    CpuPeripherals.MapPeripherals(
        cpuBus,
        CpuPeripherals.NewInternalRam(),
        CpuPeripherals.NewPpuRegisters(ppu, ppuBus),
        CpuPeripherals.NewOAMDMA(cpuBus, ppu.InternalState.OAM)
    )

    Ppu.MapPeripherals(
        ppuBus,
        Ppu.NewVRam(_getIsMirroringVertical),
        Ppu.NewPaletteControl(ppu.InternalState.Registers)
    )

    nes = {
        Cpu = cpu,
        Ppu = ppu,
        CpuBus = cpuBus,
        PpuBus = ppuBus,

        NmiSet = false,
        Clock = 0
    }

    return nes
end

return m