--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local T = require(inst_root._TYPES)
local C = require(inst_root._CONSTANTS)
local h = require(inst_root.Helpers)

local Parse = require(inst_root.Parse)
local NROM = require(inst_root.Mappers.NROM_000)
local NesTest = require(script.Parent.Parent["nestest.nes"])

type u16 = T.u16
type u8 = T.u8

local LSHIFT = bit32.lshift


return function()

    local mem: T.IMemory
    local testComplete: boolean
    local testResult: u16

    local rom = Parse.HexStrToBuffer(NesTest)
    local header = Parse.Header(rom)

    local prgBanks = header.PrgRom16kBankCount
    local prgOffset = Parse.PrgRomOffset(header.HasTrainer, 0)

    beforeEach(function()
        mem = h.NewMemory()
        testComplete = false
        testResult = 0

        local byte1Written, byte2Written = false, false

        local oldWrite = mem.Write
        mem.Write = function(i, v)
            if i == 0x02 then
                byte1Written = true
            elseif i == 0x03 then
                byte2Written = true
            end
            if byte1Written and byte2Written then
                testComplete = true
                testResult = LSHIFT(mem.Read(0x02), 8) + mem.Read(0x03)
            end
            oldWrite(i, v)
        end
        
        local oldRead = mem.Read
        mem.Read = function(i)
            local romValue = NROM.CpuReadFromBuffer(i, rom, prgOffset, prgBanks)
            if romValue then return romValue end
            return oldRead(i)
        end
    end)

    it("Maps rom to memory as expected", function()
        expect(mem.Read(0x8000)).to.equal(0x4c)
        expect(mem.Read(0x8001)).to.equal(0xf5)
        expect(mem.Read(0xC000)).to.equal(0x4c)
    end)

    local function _runNesTest()

    end
end