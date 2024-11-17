local inst_core = script.Parent.Parent.Core
local T = require(inst_core["Helpers.types"])
type u8 = T.u8


export type ActiveDMAState = {
    IdleCycleComplete: boolean,
    Page: u8,
    OAMAddr: u8,
    LastRead: u8
}


export type State = {
    InternalRam: buffer,
    ActiveDMA: ActiveDMAState?
}

return {}