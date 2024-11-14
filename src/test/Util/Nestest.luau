local inst_root = script.Parent.Parent.Parent.Shared
local inst_core, inst_components, inst_nes, inst_api =
    inst_root.Core,
    inst_root.Components,
    inst_root.Nes,
    inst_root.API

local Log = require(inst_api.Log)
local Parse = require(inst_api.Parse)
local NROM = require(inst_api.Mappers.NROM_000)

local C_NESTEST = require(script.Parent["Nestest.constants"])

local C_CPU = require(inst_components["CPU.constants"])


local T_CPU = require(inst_components["CPU.types"])
type CPU = T_CPU.CPU

local T_PPU = require(inst_components["PPU.types"])
type PPU = T_PPU.PPU


local T_H = require(inst_core["Helpers.types"])
type Bus = T_H.Bus
type Peripheral = T_H.Peripheral

local T_NES = require(inst_nes["NES.types"])
type Cartridge<MapperState> = T_NES.Cartridge<MapperState>


local LSHIFT = bit32.lshift

local m = {}


function m.Cartridge<T>(): Cartridge<T>
    local rom = Parse.HexStrToBuffer(C_NESTEST.ROM)
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
    local _getNextLog = Log.IterLogMultiple(C_NESTEST.LOGFILES)

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