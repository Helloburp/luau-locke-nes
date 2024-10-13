--!nolint UnknownGlobal
--!nocheck


local root = script.Parent.Parent.Parent.Parent.Shared
local Nes = require(root.NES)
local NestestUtil = require(script.Parent.Parent.Util.Nestest)

local T_NES = require(root["NES.types"])
type Nes = T_NES.Nes

local T_H = require(root["Helpers.types"])
type Bus = T_H.Bus


return function()
    local nes: Nes

    beforeEach(function()
        nes = Nes.New(
            function() end, function() end,
            NestestUtil.Cartridge()
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
        local oldCpuClock = nes.Cpu.ExecutionState.Clock
        while nes.Cpu.ExecutionState.Clock == oldCpuClock do
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
            maxCycles, shouldCompareLogs, nes.Cpu, nes.CpuBus, nes.Ppu,
            _doCycle, function() end, function() return false end
        )
    end

    it("Matches Nestest log up to illegal operations", function()
        local s, e = _runNesTest(15274, true) -- Full log is 26554 cycles long
        assert(s, `{e}`)
    end)
end