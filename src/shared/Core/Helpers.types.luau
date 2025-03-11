
type Memory<R,W> = {
    Read: R,
    Write: W
}

type FnRead<T> = (u16) -> (T)
type FnWrite = (u16, u8) -> boolean



-- These numeric types have no behavior, but are used to convey intent.
export type u8 = number
export type u16 = number


-- The bus' methods are infallible. Writes should never return false.
export type Bus = Memory<FnRead<u8>, FnWrite>
export type Peripheral = Memory<FnRead<u8?>?, FnWrite?>


export type ExecutionState = {
    Cycles: number,
    Clock: number
}

export type BitfieldFunctions<EValue> = {
    Get: (EValue, bitfield: number) -> (number),
    Set: (EValue, bitfield: number, value: number) -> (number),
    GetBit: (EValue, bitfield: number) -> (boolean),
    SetBit: (EValue, bitfield: number, value: boolean) -> (number),
    Compose: ({[EValue]: number}) -> (number)
}


export type IState<T,State,InputArgs=State> = {
    NewState: () -> State,
    CopyState: (State) -> State,
    FromState: (InputArgs) -> T,
}



return {}