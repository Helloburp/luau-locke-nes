local T = require(script.Parent._TYPES)
type Regs = T.Registers
type u8 = T.u8


local BAND, BXOR, BNOT = bit32.band, bit32.bxor, bit32.bnot

local _getBit, _setBit 
local _getFlag, _setFlag
local _u8
 do
    local Helpers = require(script.Parent.Helpers)
    _getBit, _setBit = Helpers.GetBit, Helpers.SetBit
    _getFlag, _setFlag = Helpers.GetFlag, Helpers.SetFlag
    _u8 = Helpers.WrapU8
end

local m = {}


function m.ADC(regs: Regs, val: u8)
    local result = regs.A + val + if _getFlag("C", regs.STATUS) then 1 else 0

    local shouldCarry = result > 255

    --[[
        Most significant bit of A must be the same as Val and different from
        Result to indicate an overflow (Result of a signed operation doesn't
            fit into the byte.)
        E.g, Positive + Positive = Negative -> Overflow

        Source:
        https://www.righto.com/2012/12/the-6502-overflow-flag-explained.html
        V = !((M^N) & 0x80) && ((M^result) & 0x80)
    ]]
    local didSignedOverflow = _getBit(7, BAND(
        BNOT(BXOR(regs.A, val)),    -- A has the same sign as val
        BXOR(regs.A, result)        -- A has a different sign from result
    ))

    regs.A = _u8(result)

    regs.STATUS = _setFlag("C", regs.STATUS, shouldCarry)
    regs.STATUS = _setFlag("Z", regs.STATUS, regs.A == 0)
    regs.STATUS = _setFlag("V", regs.STATUS, didSignedOverflow)
    regs.STATUS = _setFlag("N", regs.STATUS, _getBit(7, result))


    return 0
end


function m.SBC(regs: Regs, val: u8)

end


return m