
--[[ References
    - https://www.nesdev.org/wiki/CPU_registers
]]

local inst_core = script.Parent.Parent.Core

local T = require(inst_core["Helpers.types"])

type u8 = T.u8
type u16 = T.u16
type Bus = T.Bus
type ExecutionState = T.ExecutionState

export type StatusFlagFunctions = T.BitfieldFunctions<EStatusFlag>

export type Registers = {
    A: u8,
    X: u8,
    Y: u8,
    PC: u16,
    SP: u8,
    STATUS: u8,
}

export type State = {
    ExecutionState: ExecutionState,
    Registers: Registers,

    NMIInput: boolean,
    IRQInput: boolean,
}

export type CPU = {
    State: State,

    Instructions: {[EInstruction]: Instruction},
    AddressingModes: {[EAddressingMode]: AddressingMode},
}


export type CPUClosure = {
    State: State,
    Clock: () -> (),
    UpdateBus: (Bus) -> ()
}

-- In bitwise order
export type EStatusFlag = "C" | "Z" | "I" | "D" | "B" | "U" | "V" | "N"

export type InstructionData = {
    ContributesToPageCrossCycle: boolean,
}


--[[
    Output: extra cycles. (May not be applicable)
    Implied operations are usually for setting the accumulator
]]

type ELegalInstruction =
    "ADC" | "AND" | "ASL" | "BCC" | 
    "BCS" | "BEQ" | "BIT" | "BMI" | 
    "BNE" | "BPL" | "BRK" | "BVC" | 
    "BVS" | "CLC" | "CLD" | "CLI" | 
    "CLV" | "CMP" | "CPX" | "CPY" | 
    "DEC" | "DEX" | "DEY" | "EOR" | 
    "INC" | "INX" | "INY" | "JMP" | 
    "JSR" | "LDA" | "LDX" | "LDY" | 
    "LSR" | "NOP" | "ORA" | "PHA" | 
    "PHP" | "PLA" | "PLP" | "ROL" | 
    "ROR" | "RTI" | "RTS" | "SBC" | 
    "SEC" | "SED" | "SEI" | "STA" | 
    "STX" | "STY" | "TAX" | "TAY" | 
    "TSX" | "TXA" | "TXS" | "TYA"


export type EInstruction = ELegalInstruction | "XXX"        -- Internal behavior
export type EInstructionName = ELegalInstruction | "???"    -- Display/debug    


-- May have a mode that does not require an address
type ImplicitInstruction = (
    registers: Registers, absAddr: u16?, memory: Bus
) -> (number?)

-- Always needs an address
type NonImplicitInstruction = (
    registers: Registers, absAddr: u16, memory: Bus
) -> (number?)

export type Instruction = ImplicitInstruction | NonImplicitInstruction
export type GenericInstruction = NonImplicitInstruction

export type OpcodeData = {
	InstructionName: EInstructionName,
	Instruction: EInstruction,
	AddressingMode: EAddressingMode,
	Cycles: number,
	HasOopsCycle: boolean
}


export type EAddressingMode =
    "ZPX" | "ZPY" | "ABX" | "ABY" |
    "IZX" | "IZY" | "IMP" | "ACC" |
    "IMM" | "ZP0" | "REL" | "IND" |
    "ABS"

type NoArgAddressingMode = (regs: Registers) -> (nil, false)
type U8AddressingMode = (regs: Registers, arg: u8, mem: Bus) -> (u16, boolean)
type U16AddressingMode = (regs: Registers, arg: u16, mem: Bus) -> (u16, boolean)

export type AddressingMode = NoArgAddressingMode | U8AddressingMode | U16AddressingMode
export type GenericAddressingMode = U16AddressingMode



return {}
