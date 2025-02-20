local T_H = require(script.Parent.Parent.Core["Helpers.types"])
type u8 = T_H.u8

local T = require(script.Parent["APU.types"])
type State = T.State


local m = {}

local LSHIFT, BAND = bit32.lshift, bit32.band

function m.GetRawPeriod(tLow: u8, tHigh: u8)
    return LSHIFT(BAND(tHigh, 0x07), 8) + tLow
end


function m.GetRawNoisePeriod(noiseReg2: u8)
    return BAND(noiseReg2, 0x0F)
end


function m.NewState(): State
    return {
        Pulse1 = {
            Reg1 = 0x00,
            Reg2 = 0x00,
            Reg3 = 0x00,
            Reg4 = 0x00
        },
        Pulse2 = {
            Reg1 = 0x00,
            Reg2 = 0x00,
            Reg3 = 0x00,
            Reg4 = 0x00
        },
        Triangle = {
            Reg1 = 0x00,
            Reg2 = 0x00,
            Reg3 = 0x00,
        },
        Noise = {
            Reg1 = 0x00,
            Reg2 = 0x00,
            Reg3 = 0x00,
        }
    }
end


function m.CopyState(state: State): State
    return {
        Pulse1 = table.clone(state.Pulse1),
        Pulse2 = table.clone(state.Pulse2),
        Triangle = table.clone(state.Triangle),
        Noise = table.clone(state.Noise)
    }
end

return m