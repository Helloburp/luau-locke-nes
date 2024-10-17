local root = script.Parent.Parent.Parent.Parent.Shared

local Log = require(root.Log)
local Parse = require(root.Parse)
local NROM = require(root.Mappers.NROM_000)

local NESTEST_ROM = require(script.Parent.Parent["nestest.nes"])
local LOGFILES = require(script.Parent.NestestLogfiles)

local C_CPU = require(root["CPU.constants"])


local T_CPU = require(root["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(root["PPU.types"])
type PPU = T_PPU.PPU


local T_H = require(root["Helpers.types"])
type Bus = T_H.Bus
type Peripheral = T_H.Peripheral

local T_NES = require(root["NES.types"])
type Cartridge = T_NES.Cartridge


local LSHIFT = bit32.lshift

local m = {}


function m.Cartridge(): Cartridge
    local rom = Parse.HexStrToBuffer(NESTEST_ROM)
    local header = Parse.Header(rom)

    return NROM.NewFromRom(rom, header)
end


function m.RunNesTest(
    maxCycles: number, shouldCompareLogs: boolean,
    cpu: CPU, bus: Bus, ppu: PPU?,
    _runCpuCycle: () -> (boolean, string?),
    _onEnd: (() -> ()),  -- When PC reaches C663
    _shouldAbort: () -> (boolean)
): (boolean, string?)
    local executionState, regs = cpu.State.ExecutionState, cpu.State.Registers
    local _getNextLog = Log.IterLogMultiple(LOGFILES)

    local instructionNumber = 0
    local lastPcLog: string = ""
    local lastOpcode: number = 0


    local _doPerInstruction = if shouldCompareLogs
        then function()
            local nextLog = _getNextLog()
            if not nextLog then
                return false, "Logs finished without reaching completion!"
            end
            local logBreakdown = Log.BreakdownLog(nextLog)
            local s, e = Log.CompareCpuLog(cpu, bus, logBreakdown)

            if not ppu or not s then return s, e end

            return Log.ComparePpuLog(ppu, logBreakdown.Ppu)
        end
        else function() return true end

    -- Enable automation mode
    cpu.State.Registers.PC = 0xC000
    
    while executionState.Clock < maxCycles and not _shouldAbort() do
        if executionState.Cycles == 0 then
            instructionNumber += 1
            lastPcLog = Log.GetLogPc(regs.PC, bus)
            lastOpcode = bus.Read(regs.PC)
            local s, e = _doPerInstruction()

            if regs.PC == 0xC66E then
                _onEnd()
                break
            end

            if not s then
                return s, `{e} (Instruction #{instructionNumber})`
            end
        end

        local s, e = _runCpuCycle()
        if not s then
            local opData = C_CPU.SlowOpcodeLookup[lastOpcode + 1]
            return false,
                `Lua Error! {e}{"\n"
                }Last PC: {lastPcLog}{"\n"
                }Instruction: {opData.InstructionName}, {opData.Instruction}, {opData.AddressingMode}`
        end
    end

    return true
end


function m.GetTestResult(bus: Bus)
    return LSHIFT(bus.Read(0x02), 8) + bus.Read(0x03)
end

return m