--!optimize 2
local h = require(script.Parent.Helpers)


local T_H = require(script.Parent["Helpers.types"])
type u16 = T_H.u16
type Bus = T_H.Bus
type Peripheral = T_H.Peripheral

local T_NES = require(script.Parent["NES.types"])
type NES = T_NES.NES


local T = require(script.Parent["Debug.types"])
type Debugger = T.Debugger
type DebugLog = T.DebugLog


local C_PPU = require(script.Parent["PPU.constants"])


local m = {}


function m.Debugger(_break: (context: string) -> ()): Debugger
    local readBreakpoints = {}
    local writeBreakpoints = {}

    local function _read(addr: u16)
        if readBreakpoints[addr] then
            _break(string.format("Read from address 0x%.4x", addr))
        end
        return nil
    end

    local function _write(addr: u16)
        if writeBreakpoints[addr] then
            _break(string.format("Write to address 0x%.4x", addr))
        end
        return false
    end

    return {
        ReadBreakpoints = readBreakpoints,
        WriteBreakpoints = writeBreakpoints,
        Peripherpal = {
            Read = _read,
            Write = _write
        }
    }
end

function m.NewLog(): DebugLog
    return { PCHistory = {}, RegsHistory = {} }
end

function m.LogClock(
    _clock: (NES) -> (), log: DebugLog, maxLogHistory: number
): (NES) -> ()
    return function(nes: NES)
        local cpuState = nes.Cpu.State
        local oldCpuCycle = cpuState.ExecutionState.Cycles
        _clock(nes)

        if cpuState.ExecutionState.Cycles > oldCpuCycle then
            table.insert(log.PCHistory, cpuState.Registers.PC)
            table.insert(log.RegsHistory, table.clone(cpuState.Registers))
            if #log.PCHistory <= maxLogHistory then return end
            table.remove(log.PCHistory, 1)
            table.remove(log.RegsHistory, 1)
        end
    end
end


function m.StepCpuInstruction(nes: NES, _clock: (NES) -> ())
    local cpuState = nes.Cpu.State
    while cpuState.ExecutionState.Cycles > 0 do
        _clock(nes)
    end
    local lastClock = cpuState.ExecutionState.Clock
    while cpuState.ExecutionState.Clock == lastClock do
        _clock(nes)
    end
end

function m.StepToVBlank(nes: NES, _clock: (NES) -> ())
    local state = C_PPU.BITFIELD_UTIL.PpuStatus.GetBit(
        "V", nes.Ppu.State.Registers.PPUSTATUS
    ) 
    while state == C_PPU.BITFIELD_UTIL.PpuStatus.GetBit(
        "V", nes.Ppu.State.Registers.PPUSTATUS
    ) 
    do
        _clock(nes)
    end
end


return m