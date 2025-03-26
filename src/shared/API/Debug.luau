--!optimize 2

local inst_root = script.Parent.Parent
local inst_core, inst_components, inst_nes = inst_root.Core, inst_root.Components, inst_root.Nes

local T_H = require(inst_core["Helpers.types"])
type u16 = T_H.u16
type Bus = T_H.Bus
type Peripheral = T_H.Peripheral

local T_NES = require(inst_nes["NES.types"])
type NES = T_NES.NES


local T = require(script.Parent["Debug.types"])
type DebugLog = T.DebugLog
type DebugArgs = T.DebugArgs



local C_PPU = require(inst_components["PPU.constants"])


local m = {}


function m.Debugger(args: DebugArgs): Peripheral
    local _readPredicate = args.ReadBreakpointPredicate or function(addr: u16) return false end
    local _writePredicate = args.WriteBreakpointPredicate or function(addr: u16) return false end

    local function _read(addr: u16)
        if _readPredicate(addr) then
            args.BreakCallback(string.format("Read from address 0x%.4x", addr))
        end
        return nil
    end

    local function _write(addr: u16)
        if _writePredicate(addr) then
            args.BreakCallback(string.format("Write to address 0x%.4x", addr))
        end
        return false
    end

    return {
        Read = _read,
        Write = _write
    }
end

function m.NewLog(): DebugLog
    return { PCHistory = {}, RegsHistory = {} }
end

function m.LogClock(
    _clock: (NES) -> (), log: DebugLog, maxLogHistory: number
): (NES) -> ()
    return function(nes: NES)
        local cpuState = nes.State.Cpu
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


function m.StepCpuInstruction(nes: NES, _clock: (number) -> ())
    local cpuState = nes.State.Cpu
    while cpuState.ExecutionState.Cycles > 0 do
        _clock(1)
    end
    local lastClock = cpuState.ExecutionState.Clock
    while cpuState.ExecutionState.Clock == lastClock do
        _clock(1)
    end
end

function m.StepToVBlank(nes: NES, _clock: (number) -> ())
    local state = C_PPU.BITFIELD_UTIL.PpuStatus.GetBit(
        "V", nes.State.Ppu.Registers.PPUSTATUS
    ) 
    while state == C_PPU.BITFIELD_UTIL.PpuStatus.GetBit(
        "V", nes.State.Ppu.Registers.PPUSTATUS
    ) 
    do
        _clock(1)
    end
end


return m