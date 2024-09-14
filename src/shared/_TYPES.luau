
--[[ References
    - https://www.nesdev.org/wiki/CPU_registers
]]

-- These numeric types have no behavior, but are used to convey intent.
export type u8 = number
export type u16 = number

export type Registers = {
    A: u8,
    X: u8,
    Y: u8,
    PC: u16,
    SP: u8,
    STATUS: u8,
}

export type ExecutionState = {
    Cycles: number,
    Clock: number
}

export type CPU = {
    ExecutionState: ExecutionState,
    Registers: Registers,

    Instructions: {[EInstruction]: Instruction},
    AddressingModes: {[EAddressingMode]: AddressingMode},
    Memory: IMemory,
}

-- In bitwise order
export type EStatusFlag = "C" | "Z" | "I" | "D" | "B" | "U" | "V" | "N"

export type InstructionData = {
    ContributesToPageCrossCycle: boolean,
}

export type IMemory = {
    Read: (u16) -> (u8),
    Write: (u16, u8) -> ()
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
    registers: Registers, absAddr: u16?, memory: IMemory
) -> (number?)

-- Always needs an address
type NonImplicitInstruction = (
    registers: Registers, absAddr: u16, memory: IMemory
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
type U8AddressingMode = (regs: Registers, arg: u8, mem: IMemory) -> (u16, boolean)
type U16AddressingMode = (regs: Registers, arg: u16, mem: IMemory) -> (u16, boolean)
export type AddressingMode = NoArgAddressingMode | U8AddressingMode | U16AddressingMode
export type GenericAddressingMode = U16AddressingMode



return {}

--[[ Address mode arguments & return values
    16 bit absolute address or 8 bit relative address
    A boolean describing whether the address crossed a page threshold
]]

--[[ Address mode lookup info
    How many bytes an addressing mode needs to compute its address
        Should be used to increment the PC and construct an input
        for the address mode.
]]