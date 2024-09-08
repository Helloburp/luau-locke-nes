--[[ References
    https://www.nesdev.org/obelisk-6502-guide/reference.html
    https://www.righto.com/2012/12/the-6502-overflow-flag-explained.html
]]

local T = require(script.Parent._TYPES)
type Regs = T.Registers
type u8 = T.u8
type IMemory = T.IMemory
type OutputState = T.OutputAddressState


local BAND, BXOR, BNOT = bit32.band, bit32.bxor, bit32.bnot
local LSHIFT  = bit32.lshift

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


function _add(regs: Regs, operand: u8)
    local result = regs.A + operand + if _getFlag("C", regs.STATUS) then 1 else 0

    -- V = !((M^N) & 0x80) && ((M^result) & 0x80)
    local didSignedOverflow = _getBit(7, BAND(
        BNOT(BXOR(regs.A, operand)),    -- A has the same sign as val
        BXOR(regs.A, result)        -- A has a different sign from result
    ))

    regs.A = _u8(result)

    _setFlag("C", regs, BAND(result, 0xFF00) > 0)
    _setFlag("Z", regs, regs.A == 0)
    _setFlag("V", regs, didSignedOverflow)
    _setFlag("N", regs, _getBit(7, result))
end


function m.ADC(regs: Regs, val: u8)
    _add(regs, val)
end


function m.SBC(regs: Regs, val: u8)
    _add(regs, BXOR(val, 0xFF))
end


--[[
    The documentation says that Z is set if the accumulator is 0, but
    it also says that Z is set if "the last operation resulted in 0",
    and OLC's emulator also sees it that way. So, that's what I'm going with
]]
function m.ASL(regs: Regs, val: u8, memory: IMemory, outputState: OutputState)
    local result = LSHIFT(val, 1)
    local result_u8 = _u8(result)

    if outputState._t == "Implied" then
        regs.A = result_u8
    elseif outputState._t == "Absolute" then
        memory.Write(outputState.Address, result_u8)
    end

    _setFlag("C", regs, _getBit(8, result))
    _setFlag("Z", regs, result_u8 == 0)
    _setFlag("N", regs, _getBit(7, result))
end


return m