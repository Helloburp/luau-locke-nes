--!nolint UnknownGlobal
--!nocheck


local inst_root = script.Parent.Parent.Parent.Parent.Shared
local inst_core, inst_nes, inst_api = inst_root.Core, inst_root.Nes, inst_root.API
local Nes = require(inst_nes.NES)

local inst_util = script.Parent.Parent.Parent.Util
local NestestUtil = require(inst_util.Nestest)

local Display = require(inst_api.Display)
local C_DISPLAY = require(inst_api["Display.constants"])

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES

local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus


return function()
    local nes: NES

    beforeEach(function()
        local iPorts = NestestUtil.NewPortsInterface()
        local iMapper = NestestUtil.NewMapperInterface()
        nes = Nes.New(
            {
                OnFrameComplete = function() end,
                ScreenBuffer = Display.NewDisplayBuffer(C_DISPLAY.RESOLUTIONS.SCREEN),
                COLORS_U32 = C_DISPLAY.COLORS_U32
            } :: T_NES.Display,
            iPorts.FromState(nil),
            iMapper.FromState(nil),
            Nes.NewState()
        )
    end)
    
    it("Maps Prg rom to memory as expected", function()
        expect(nes.CpuBus.Read(0x8000)).to.equal(0x4c)
        expect(nes.CpuBus.Read(0x8001)).to.equal(0xf5)
        expect(nes.CpuBus.Read(0xC000)).to.equal(0x4c)
    end)

    it("Maps Chr rom to memory as expected", function()
        -- Beginning of pattern mem maps to 0x4010 in nestest
        expect(nes.PpuBus.Read(0x0000)).to.equal(0x00)
        expect(nes.PpuBus.Read(0x0020)).to.equal(0x80)
        expect(nes.PpuBus.Read(0x0032)).to.equal(0xFF)
    end)


    local _doCycle = function()
        local state = nes.Cpu.State
        local oldCpuClock = state.ExecutionState.Clock
        while state.ExecutionState.Clock == oldCpuClock do
            local s, e = pcall(Nes.Clock, nes)
            if not s then return s, e end
        end

        return true
    end

    local function _runNesTest(
        maxCycles: number,
        shouldCompareLogs: boolean
    ): (boolean, string?)
        return NestestUtil.RunNesTest(
            maxCycles, shouldCompareLogs, nes.Cpu, nes.CpuBus, nes.State.Ppu,
            _doCycle, function() end, function() return false end
        )
    end

    it("Matches Nestest log up to illegal operations", function()
        local s, e = _runNesTest(15274, true) -- Full log is 26554 cycles long
        assert(s, `{e}`)
    end)
end