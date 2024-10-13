--!nolint UnknownGlobal
--!nocheck

-- Source for error codes: https://www.qmtpro.com/~nes/misc/nestest.txt

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local T = require(inst_root["CPU.types"])
local h = require(inst_root.Helpers)
local m = require(inst_root.CPU)


local Parse = require(inst_root.Parse)
local NROM = require(inst_root.Mappers.NROM_000)

local NestestUtil = require(script.Parent.Parent.Util.Nestest)

local NESTEST_ROM = require(script.Parent.Parent["nestest.nes"])


type u16 = T.u16
type u8 = T.u8


return function()
    local bus: T.Bus
    local cpu: T.CPU

    local rom = Parse.HexStrToBuffer(NESTEST_ROM)
    local header = Parse.Header(rom)

    beforeEach(function()
        bus = h.NewDebugBus()

        cpu = m.New(
            require(inst_root.AddressingModes),
            require(inst_root.Instructions),
            bus
        )
        
        local oldRead = bus.Read
        bus.Read = function(i)
            local romValue = NROM.CpuReadFromBuffer(i, rom,
                Parse.PrgRomOffset(header.HasTrainer, 0),
                header.PrgRom16kBankCount
            )
            if romValue then return romValue end
            return oldRead(i)
        end
    end)

    it("Maps rom to memory as expected", function()
        expect(bus.Read(0x8000)).to.equal(0x4c)
        expect(bus.Read(0x8001)).to.equal(0xf5)
        expect(bus.Read(0xC000)).to.equal(0x4c)
    end)

    local _doCycle = function()
        return pcall(m.Clock, cpu, bus)
    end

    local function _runNesTest(
        maxCycles: number,
        shouldCompareLogs: boolean
    ): (boolean, string?)
        return NestestUtil.RunNesTest(
            maxCycles, shouldCompareLogs, cpu, bus,
            _doCycle, function() end, function() return false end
        )
    end

    it("Matches Nestest log up to illegal operations", function()
        local s, e = _runNesTest(15274, true) -- Full log is 26554 cycles long
        assert(s, `{e}`)
    end)

end