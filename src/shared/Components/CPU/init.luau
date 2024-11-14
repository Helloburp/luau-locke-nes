--!optimize 2


local T = require(script.Parent["CPU.types"])
type CPU = T.CPU
type Regs = T.Registers
type StatusFlagFunctions = T.StatusFlagFunctions
type State = T.State

local inst_core = script.Parent.Parent.Core

local T_H = require(inst_core["Helpers.types"])

type u8 = T_H.u8
type Bus = T_H.Bus


local C = require(script.Parent["CPU.constants"])
local h = require(inst_core.Helpers)

local Instructions = require(script.Instructions)

local m = {}

local LSHIFT = bit32.lshift

local _u8, _u16 = h.WrapU8, h.WrapU16

local StatusFlag = C.BITFIELD_UTIL.StatusFlag

function m.NewRegisters(): Regs
    return {
        A = 0, X = 0, Y = 0,
        PC = 0x0000, SP = 0xFD,
        STATUS = 0b00100100     -- Interrupt and unused set to 1
    }
end


function m.RunInstructionAndReturnCycles(
    regs: Regs, bus: Bus,
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction}
): number
    local opcode = bus.Read(regs.PC)
    regs.PC = _u16(regs.PC + 1)

    local opcodeData = C.OpcodeLookup[opcode + 1] -- Lua moment

    local instructionId = opcodeData[2]
    local addrModeName = opcodeData[3]
    local instructionCycles = opcodeData[4]
    local instructionOopsCycle = opcodeData[5]

    local addrModeBytes = C.BytesPerAddressingMode[addrModeName]
    assert(addrModeBytes, `Did not find address mode bytes for mode {addrModeName}`)

    local lo = bus.Read(regs.PC)
    local hi = bus.Read(_u16(regs.PC + 1))
    regs.PC = _u16(regs.PC + addrModeBytes)

    local addrModeArg = if addrModeBytes == 1 then lo
        elseif addrModeBytes == 2 then lo + LSHIFT(hi, 8)
        else 0
    

    assert(addressingModes[addrModeName], `Did not find address mode named "{addrModeName}"`)
    local addr, addrOopsCycle = (addressingModes[addrModeName])(
        regs, addrModeArg, bus
    )

    assert(instructions[instructionId], `Could not find instruction {instructionId}`)
    local extraCycles = (instructions[instructionId])(
        regs, addr, bus
    )

    local shouldOopsCycle = addrOopsCycle and instructionOopsCycle
    
    return instructionCycles + (extraCycles or 0) + if shouldOopsCycle then 1 else 0
end


function m.Clock(cpu: CPU, bus: Bus)
    local state = cpu.State
    assert(state.ExecutionState.Cycles >= 0, "CPU cycles should be >= 0")

    if state.ExecutionState.Cycles == 0 then
         state.ExecutionState.Cycles +=
            if state.NMIInput then _nmi(cpu, bus)

            elseif state.IRQInput and not StatusFlag.GetBit(
                "I", state.Registers.STATUS
            ) then _irq(cpu, bus)

            else m.RunInstructionAndReturnCycles(
            state.Registers, bus,
            cpu.AddressingModes :: any,
            cpu.Instructions :: any
         )
    end

    state.ExecutionState.Clock += 1
    state.ExecutionState.Cycles -= 1
end


--[[
    Note: The PC stack offset is set to 0.
    This is because, in my clock function, execution of an
    interrupt happens *just* before another instruction
    is ran, ergo, PC + 0 is where execution must resume.
]]

function _nmi(cpu: CPU, bus: Bus): number
    local state = cpu.State
    Instructions.Interrupt(state.Registers, 0xFFFA, bus, 0, false)
    state.NMIInput = false
    return 8
end

function _irq(cpu: CPU, bus: Bus): number
    Instructions.Interrupt(cpu.State.Registers, 0xFFFE, bus, 0, false)
    return 7
end


function m.NewState(): State
    return {
        Registers = m.NewRegisters(),
        ExecutionState = {
            Cycles = 7, Clock = 0   -- Startup sequence takes 7 cycles
        },
        NMIInput = false,
        IRQInput = false,
    }
end


function m.CopyState(state: State): State
    return {
        Registers = table.clone(state.Registers),
        ExecutionState = table.clone(state.ExecutionState),
        NMIInput = state.NMIInput,
        IRQInput = state.IRQInput
    }
end


-- New CPU struct with values set to expected state at startup
function m.New(
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction},
    state: State?
): CPU
    return {
        State = state or m.NewState(),
        AddressingModes = addressingModes,
        Instructions = instructions,
    }
end


return m