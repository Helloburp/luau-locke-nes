local T = require(script.Parent["Helpers.types"])
type Peripheral = T.Peripheral
type u16 = T.u16

local T_CPU = require(script.Parent["CPU.types"])



export type Debugger = {
    ReadBreakpoints: {[u16]: true},
    WriteBreakpoints: {[u16]: true},
    Peripherpal: Peripheral
}

export type DebugLog = {
    PCHistory: {number},
    RegsHistory: {T_CPU.Registers}
}

return {}