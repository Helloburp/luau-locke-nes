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

local inst_logfiles = script.Parent.Parent.logfiles

local LOGFILES = {
    require(inst_logfiles["nestest.log.part1of5"]),
    require(inst_logfiles["nestest.log.part2of5"]),
    require(inst_logfiles["nestest.log.part3of5"]),
    require(inst_logfiles["nestest.log.part4of5"]),
    require(inst_logfiles["nestest.log.part5of5"]),
}

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

    local function _onWrite(i, v)
        if i == 0x0300 and v == 0xA9 then
            -- error("Condition hit")
        end
    end

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
            if not i then return end
            _onWrite(i, v)

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
            if not i then return 0 end
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

    local function _compareLogs(
        goodLog: Log.LogBreakdown, instructionNumber: number,
        pcLog: string, regLog: string, cycLog: string, extraInfo: string?
    )
        extraInfo = extraInfo or ""
        assert(
            pcLog == goodLog.PC,
            `Expected PC to be {goodLog.PC}, got {pcLog} instead. (Instruction #{instructionNumber}){extraInfo}`
        )
        assert(
            regLog == goodLog.Registers,
            `Expected registers to be {goodLog.Registers}, got {regLog} instead. (Instruction #{instructionNumber}){extraInfo}`
        )
        assert(
            cycLog == goodLog.Cycles,
            `Expected cycles to be {goodLog.Cycles}, got {cycLog} instead. (Instruction #{instructionNumber}){extraInfo}`
        )
    end

    local function _checkLogs(
        instructionNumber: number,
        _getNextLog: () -> (string?),
        _onError: () -> ()
    )
        local goodLogBreakdown = Log.BreakdownLog(_getNextLog())
        local pcLog, regLog, cycLog =
            Log.GetLogPc(cpu.Registers.PC, cpu.Memory),
            Log.GetLogRegs(cpu.Registers),
            Log.GetLogCycles(cpu.ExecutionState.Clock)

        local s, r = pcall(function()
            _compareLogs(goodLogBreakdown, instructionNumber, pcLog, regLog, cycLog)
        end)

        if not s then
            _onError(cpu)
            error(r)
        end
    end

    local function _newLogger(logfiles: {string}): () -> (string?)
        local logfileIndex = 1

        local iter = Log.IterLog(LOGFILES[logfileIndex])

        local function _getNextLog()
            local nextLog = iter()
            if not nextLog then
                logfileIndex += 1
                iter = Log.IterLog(LOGFILES[logfileIndex])
                nextLog = iter()
            end
            return nextLog
        end

        return _getNextLog
    end

    local function _runNesTest(
        maxCycles: number,
        shouldCompareLogs: boolean,
        _onError: (() -> ())?,
        _onEnd: (() -> ())?     -- When PC reaches C663
    )
        local instructionNumber = 0
        
        local _getNextLog = _newLogger(LOGFILES)
        local _onLogError = _onError or function() end

        local lastPcLog: string = ""
        local lastOpcode: number = 0

        local _doPerInstruction = if shouldCompareLogs
            then function() _checkLogs(instructionNumber, _getNextLog, _onLogError) end
            else function() end

        local function _doCycle()
            local s, e = pcall(function() m.Cycle(cpu) end)

            if not s then
                _onLogError()
                local opcodeData = C.SlowOpcodeLookup[lastOpcode + 1]
                error(`Lua Error! {e}\nLast PC: {lastPcLog}\nInstruction: {opcodeData.InstructionName}, {opcodeData.Instruction}, {opcodeData.AddressingMode}`)
            end
        end
        
        while cpu.ExecutionState.Clock < maxCycles and not testComplete do
            if cpu.ExecutionState.Cycles == 0 then
                instructionNumber += 1
                lastPcLog = Log.GetLogPc(cpu.Registers.PC, cpu.Memory)
                lastOpcode = cpu.Memory.Read(cpu.Registers.PC)
                _doPerInstruction()

                if cpu.Registers.PC == 0xC66E then
                    _onEnd()
                    break
                end
            end
            _doCycle()
        end
    end

    it("Matches Nestest log up to illegal operations", function()
        _runNesTest(15274, true) -- Full log is 26554 cycles long
        -- expect(testComplete).to.equal(true)
        -- expect(testResult).to.equal(0x0000)
    end)

    -- Source for error codes: https://www.qmtpro.com/~nes/misc/nestest.txt
    it("Full run of nestest", function()
        _runNesTest(50000, false, nil, function() print("Winner!") end)
        expect(testComplete).to.equal(true)
        assert(testResult == 0x0000, string.format("Test failed: 0x02: %X, 0x03: %X", mem.Read(0x02), mem.Read(0x03)))
    end)
end