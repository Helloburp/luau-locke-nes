

local T = require(script.Parent["CPU.types"])
type CPU = T.CPU
type Regs = T.Registers
type StatusFlagFunctions = T.StatusFlagFunctions

local T_H = require(script.Parent["Helpers.types"])

type u8 = T_H.u8
type Bus = T_H.Bus


local C = require(script.Parent["CPU.constants"])
local h = require(script.Parent.Helpers)

local Instructions = require(script.Parent.Instructions)

local m = {}

local LSHIFT = bit32.lshift

local _u8, _u16 = h.WrapU8, h.WrapU16

local StatusFlag = C.BITFIELD_UTIL.StatusFlag

function m.NewRegisters(): Regs
    return {
        A = 0, X = 0, Y = 0,
        PC = 0xFFFC, SP = 0xFD,
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
    assert(cpu.ExecutionState.Cycles >= 0, "CPU cycles should be >= 0")

    if cpu.ExecutionState.Cycles == 0 then
         cpu.ExecutionState.Cycles +=
            if cpu.NMIInput then _nmi(cpu, bus)

            elseif cpu.IRQInput and not StatusFlag.GetBit(
                "I", cpu.Registers.STATUS
            ) then _irq(cpu, bus)

            else m.RunInstructionAndReturnCycles(
            cpu.Registers, bus,
            cpu.AddressingModes :: any,
            cpu.Instructions :: any
         )
    end

    cpu.ExecutionState.Clock += 1
    cpu.ExecutionState.Cycles -= 1
end


--[[
    Note: The PC stack offset is set to 0.
    This is because, in my clock function, execution of an
    interrupt happens *just* before another instruction
    is ran, ergo, PC + 0 is where execution must resume.
]]

function _nmi(cpu: CPU, bus: Bus): number
    Instructions.Interrupt(cpu.Registers, 0xFFFA, bus, 0, false)
    cpu.NMIInput = false
    return 8
end

function _irq(cpu: CPU, bus: Bus): number
    Instructions.Interrupt(cpu.Registers, 0xFFFE, bus, 0, false)
    return 7
end


-- New CPU struct with values set to expected state at startup
function m.New(
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction}
): CPU
    return {
        Registers = m.NewRegisters(),
        ExecutionState = {
            Cycles = 0, Clock = 7   -- Startup sequence takes 7 cycles
        },
        NMIInput = false,
        IRQInput = false,
        AddressingModes = addressingModes,
        Instructions = instructions,
    }
end



return m