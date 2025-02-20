local T_H = require(script.Parent.Parent.Core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16

export type Pulse = {
    Reg1: u8,   -- Duty Cycle & Volume
    Reg2: u8,   -- Sweep unit
    Reg3: u8,   -- Low period
    Reg4: u8    -- Length; High period
}


export type State = {
    Pulse1: Pulse,
    Pulse2: Pulse,
    Triangle: {
        Reg1: u8,   -- Control; Reload
        Reg2: u8,   -- Timer low
        Reg3: u8    -- Length; Timer high
    },
    Noise: {
        Reg1: u8,   -- Envelope,
        Reg2: u8,   -- Loop; Period
        Reg3: u8    -- Length
    }
}


return {}