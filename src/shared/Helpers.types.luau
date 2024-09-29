

-- These numeric types have no behavior, but are used to convey intent.
export type u8 = number
export type u16 = number

export type Bus = {
    Read: (u16) -> (u8),
    Write: (u16, u8) -> ()
}

export type ExecutionState = {
    Cycles: number,
    Clock: number
}

export type BitfieldFunctions<EValue> = {
    Get: (EValue, bitfield: number) -> (number),
    Set: (EValue, bitfield: number, value: number) -> (number),
    Compose: ({[EValue]: number}) -> (number)
}

return {}