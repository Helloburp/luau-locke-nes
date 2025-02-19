--!nolint UnknownGlobal
--!nocheck

-- Source for error codes: https://www.qmtpro.com/~nes/misc/nestest.txt

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local inst_core, inst_components, inst_api = inst_root.Core, inst_root.Components, inst_root.API
local inst_auxiliary = inst_root.Auxiliary

local T = require(inst_components["CPU.types"])
local h = require(inst_core.Helpers)
local m = require(inst_components.CPU)


local Parse = require(inst_api.Parse)
local StringBufferConversion = require(inst_auxiliary.StringBufferConversion)
local NROM = require(inst_api.Mappers.NROM_000)

local inst_util = script.Parent.Parent.Parent.Util
local NestestUtil = require(inst_util.Nestest)

local NESTEST_ROM = require(inst_util["Nestest.constants"]).ROM


type u16 = T.u16
type u8 = T.u8


return function()
    local bus: T.Bus
    local cpu: T.CPU

    local rom = StringBufferConversion.HexStrToBuffer(NESTEST_ROM)
    local header = Parse.Header(rom)

    beforeEach(function()
        bus = h.NewDebugBus()

        cpu = m.New(
            require(inst_components.CPU.AddressingModes),
            require(inst_components.CPU.Instructions)
        )

        local romInterface = Parse.RomInterface(rom)
        
        local oldRead = bus.Read
        bus.Read = function(i)
            local romValue = NROM.CpuReadFromBuffer(
                i, header.PrgRom16kBankCount, romInterface.PrgMem.Read
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
            maxCycles, shouldCompareLogs, cpu, bus, nil,
            _doCycle, function() end, function() return false end
        )
    end

    it("Matches Nestest log up to illegal operations", function()
        local s, e = _runNesTest(15274, true) -- Full log is 26554 cycles long
        assert(s, `{e}`)
    end)

end