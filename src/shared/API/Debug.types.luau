local inst_root = script.Parent.Parent
local inst_core, inst_components = inst_root.Core, inst_root.Components

local T = require(inst_core["Helpers.types"])
type Peripheral = T.Peripheral
type u16 = T.u16

local T_CPU = require(inst_components["CPU.types"])

export type DebugArgs = {
    BreakCallback: (string) -> (),
    ReadBreakpointPredicate: ((u16) -> boolean)?,
    WriteBreakpointPredicate: ((u16) -> boolean)?,
}


export type DebugLog = {
    PCHistory: {number},
    RegsHistory: {T_CPU.Registers}
}

return {}