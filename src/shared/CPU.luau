local T = require(script.Parent._TYPES)
local C = require(script.Parent._CONSTANTS)
type CPU = T.CPU
type Regs = T.Registers
type Mem = T.IMemory

local m = {}

local LSHIFT = bit32.lshift


function m.RunInstructionAndReturnCycles(
    regs: Regs, mem: Mem,
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction}
): number
    local opcode = mem.Read(regs.PC)
    regs.PC += 1

    local opcodeData = C.OpcodeLookup[opcode]

    local instructionId = opcodeData[2]
    local addrModeName = opcodeData[3]
    local instructionCycles = opcodeData[4]
    local instructionOopsCycle = opcodeData[5]

    local addrModeBytes = C.BytesPerAddressingMode[addrModeName]

    local lo = mem.Read(regs.PC)
    local hi = mem.Read(regs.PC + 1)
    regs.PC += addrModeBytes

    local addrModeArg = if addrModeBytes == 1 then lo
        elseif addrModeBytes == 2 then lo + LSHIFT(hi)
        else 0
    

    local addr, addrOopsCycle = (addressingModes[addrModeName])(
        regs, addrModeArg, mem
    )

    local extraCycles = (instructions[instructionId])(
        regs, addr, mem
    )

    local shouldOopsCycle = addrOopsCycle and instructionOopsCycle
    
    return instructionCycles + extraCycles or 0 + if shouldOopsCycle then 1 else 0
end


function m.Cycle(cpu: CPU)
    assert(cpu.ExecutionState.Cycles >= 0, "CPU cycles should be >= 0")

    if cpu.ExecutionState.Cycles == 0 then
         cpu.ExecutionState.Cycles += m.RunInstructionAndReturnCycles(
            cpu.Registers, cpu.Memory,
            cpu.AddressingModes :: any,
            cpu.Instructions :: any
         )
    end

    cpu.ExecutionState.Clock += 1
    cpu.ExecutionState.Cycles -= 1
end


return m