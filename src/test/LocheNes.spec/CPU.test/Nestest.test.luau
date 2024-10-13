--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local T = require(inst_root["CPU.types"])
local C = require(inst_root["CPU.constants"])
local h = require(inst_root.Helpers)
local m = require(inst_root.CPU)


local Log = require(inst_root.Log)
local Parse = require(inst_root.Parse)
local Debug = require(inst_root.Debug)
local NROM = require(inst_root.Mappers.NROM_000)

local NestestUtil = require(script.Parent.Parent.TestUtil.Nestest)

local NESTEST_ROM = require(script.Parent.Parent["nestest.nes"])

local LOGFILES = require(script.Parent.Parent.logfiles)

type u16 = T.u16
type u8 = T.u8

local LSHIFT = bit32.lshift


return function()

    local bus: T.Bus
    local cpu: T.CPU

    local rom = Parse.HexStrToBuffer(NESTEST_ROM)
    local header = Parse.Header(rom)

    local prgBanks = header.PrgRom16kBankCount
    local prgOffset = Parse.PrgRomOffset(header.HasTrainer, 0)

    local function _onWrite(i, v)
        if i == 0x0300 and v == 0xA9 then
            -- error("Condition hit")
        end
    end

    beforeEach(function()
        bus = h.NewDebugBus()

        cpu = m.New(
            require(inst_root.AddressingModes),
            require(inst_root.Instructions),
            bus
        )
        -- Automation mode
        cpu.Registers.PC = 0xC000

        local oldWrite = bus.Write
        bus.Write = function(i, v)
            -- if not i then return end
            _onWrite(i, v)
            oldWrite(i, v)
        end
        
        local oldRead = bus.Read
        bus.Read = function(i)
            -- if not i then return 0 end
            local romValue = NROM.CpuReadFromBuffer(i, rom, prgOffset, prgBanks)
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
            _doCycle, _onEnd, function() return false end
        )
    end

    it("Matches Nestest log up to illegal operations", function()
        local s, e = _runNesTest(15274, true) -- Full log is 26554 cycles long
        assert(s, `{e}`)
        -- expect(s).to.equal(true)
        -- expect(testResult).to.equal(0x0000)
    end)

    -- Source for error codes: https://www.qmtpro.com/~nes/misc/nestest.txt
    -- it("Full run of nestest", function()
    --     _runNesTest(50000, false, nil, function() print("Winner!") end)
    --     expect(testComplete).to.equal(true)
    --     assert(testResult == 0x0000, string.format("Test failed: 0x02: %X, 0x03: %X", mem.Read(0x02), mem.Read(0x03)))
    -- end)
end