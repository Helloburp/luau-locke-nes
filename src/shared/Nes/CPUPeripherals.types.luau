local inst_core = script.Parent.Parent.Core
local T = require(inst_core["Helpers.types"])
type u8 = T.u8

local inst_components = script.Parent.Parent.Components
local T_APU = require(inst_components["APU.types"])
type APUState = T_APU.State



export type ActiveDMAState = {
    IdleCycleComplete: boolean,
    Page: u8,
    OAMAddr: u8,
    LastRead: u8
}


export type Ports = {
    ControllerLatchUpdate: (boolean) -> (),
    ReadPort1: () -> u8,
    ReadPort2: () -> u8,
}


export type State = {
    InternalRam: buffer,
    ActiveDMA: ActiveDMAState?,
    APU: APUState,
    ControllerLatch: boolean,
}

return {}