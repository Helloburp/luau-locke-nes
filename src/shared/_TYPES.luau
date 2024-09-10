
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

-- May have a mode that does not require an address
type ImplicitInstruction = (
    registers: Registers,
    absAddr: u16?,   -- Address of operand as determined by addressing mode
    memory: IMemory
) -> (number?)

-- Always needs an address
type NonImplicitInstruction = (
    registers: Registers,
    absAddr: u16,
    memory: IMemory
) -> (number?)

export type Instruction = ImplicitInstruction | NonImplicitInstruction

type NoArgAddressingMode = (regs: Registers) -> ()
type U8AddressingMode = (regs: Registers, arg: u8, mem: IMemory) -> (u16)
type U16AddressingMode = (regs: Registers, arg: u16, mem: IMemory) -> (u16)

export type EAddressingMode =
    "ZPX" | "ZPY" | "ABX" | "ABY" |
    "INX" | "INY" | "IMP" | "ACC" |
    "IMM" | "ZP0" | "REL" | "IND"

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

return {}



--[[ Instruction arguments & return values
    - Registers
    - read/write calls (e.g BRK)
    - An 8-bit value to operate on (calculated via addressing mode)
    - Some instructions can cause additional cycles depending on
        behavior & state; need to return amt of extra added cycles
    
    Generic might be:
    (
        regs: Registers,
        value: u8,
        memCallbacks: (read, write)
    ) -> (addedCycles: number)
]]


--[[ Instruction lookup info
    - Some instructions have the potential to need an extra cycle
        if a page of memory is crossed; each instruction can have a bool
        for this.
]]

--[[ Address mode arguments & return values
    16 bit absolute address or 8 bit relative address
    A boolean describing whether the address crossed a page threshold
]]

--[[ Address mode lookup info
    How many bytes an addressing mode needs to compute its address
        Should be used to increment the PC and construct an input
        for the address mode.
]]