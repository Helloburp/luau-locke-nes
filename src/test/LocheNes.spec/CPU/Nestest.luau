--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local T = require(inst_root._TYPES)
local C = require(inst_root._CONSTANTS)
local h = require(inst_root.Helpers)
local m = require(inst_root.CPU)


local Log = require(inst_root.Log)
local Parse = require(inst_root.Parse)
local NROM = require(inst_root.Mappers.NROM_000)
local NesTest = require(script.Parent.Parent["nestest.nes"])

local LOGFILE = require(script.Parent.Parent["nestest.log.part1"])

type u16 = T.u16
type u8 = T.u8

local LSHIFT = bit32.lshift


return function()

    local mem: T.IMemory
    local cpu: T.CPU
    local testComplete: boolean
    local testResult: u16

    local rom = Parse.HexStrToBuffer(NesTest)
    local header = Parse.Header(rom)

    local prgBanks = header.PrgRom16kBankCount
    local prgOffset = Parse.PrgRomOffset(header.HasTrainer, 0)

    beforeEach(function()
        mem = h.NewMemory()
        testComplete = false
        testResult = 0xFFFF

        cpu = m.NewCPU(
            require(inst_root.AddressingModes),
            require(inst_root.Instructions),
            mem
        )
        -- Automation mode
        cpu.Registers.PC = 0xC000

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

    local function _runNesTest(maxCycles: number)
        local instructionNumber = 0
        local iter = Log.IterLog(LOGFILE)
        while cpu.ExecutionState.Clock < maxCycles and not testComplete do
            if cpu.ExecutionState.Cycles == 0 then
                instructionNumber += 1
                local goodLogBreakdown = Log.BreakdownLog(iter())
                local pcLog, regLog, cycLog =
                    Log.GetLogPc(cpu.Registers.PC, mem),
                    Log.GetLogRegs(cpu.Registers),
                    Log.GetLogCycles(cpu.ExecutionState.Clock)
                assert(
                    pcLog == goodLogBreakdown.PC,
                    `Expected PC to be {goodLogBreakdown.PC}, got {pcLog} instead. (Instruction #{instructionNumber})`
                )
                assert(
                    regLog == goodLogBreakdown.Registers,
                    `Expected registers to be {goodLogBreakdown.Registers}, got {regLog} instead. (Instruction #{instructionNumber})`
                )
                assert(
                    cycLog == goodLogBreakdown.Cycles,
                    `Expected cycles to be {goodLogBreakdown.Cycles}, got {cycLog} instead. (Instruction #{instructionNumber})`
                )
            end
            m.Cycle(cpu)
        end
    end

    it("Completes Nestest successfully", function()
        _runNesTest(5000)
        expect(testComplete).to.equal(true)
        expect(testResult).to.equal(0x0000)
    end)
end