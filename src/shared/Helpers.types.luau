

-- These numeric types have no behavior, but are used to convey intent.
export type u8 = number
export type u16 = number

-- The bus' methods are infallible.
export type Bus = {
    Read: (u16) -> (u8),
    Write: (u16, u8) -> (true)
}

export type Peripheral = {
    Read: ((u16) -> (u8?))?,
    Write: ((u16, u8) -> (boolean))?
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