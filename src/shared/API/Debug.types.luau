local inst_root = script.Parent.Parent
local inst_core, inst_components = inst_root.Core, inst_root.Components

local T = require(inst_core["Helpers.types"])
type Peripheral = T.Peripheral
type u16 = T.u16

local T_CPU = require(inst_components["CPU.types"])



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