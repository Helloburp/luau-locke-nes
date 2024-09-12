--[[ References
    https://www.nesdev.org/obelisk-6502-guide/reference.html
    https://www.righto.com/2012/12/the-6502-overflow-flag-explained.html
]]

local T = require(script.Parent._TYPES)
type Regs = T.Registers
type u8 = T.u8
type u16 = T.u16
type IMemory = T.IMemory


local BAND, BXOR, BNOT = bit32.band, bit32.bxor, bit32.bnot
local LSHIFT  = bit32.lshift

local Helpers = require(script.Parent.Helpers)
local _getBit, _setBit = Helpers.GetBit, Helpers.SetBit
local _getFlag, _setFlag = Helpers.GetFlag, Helpers.SetFlag
local _u8, _u16 = Helpers.WrapU8, Helpers.WrapU16
local _s8ToS16 = Helpers.Signed8ToSigned16

local m = {}


function _setZeroAndNegative(regs: Regs, result: u8)
    _setFlag("Z", regs, result == 0)
    _setFlag("N", regs, _getBit(7, result))
end


function _adder(regs: Regs, operand: u8)
    local result = regs.A + operand + if _getFlag("C", regs.STATUS) then 1 else 0

    -- V = !((M^N) & 0x80) && ((M^result) & 0x80)
    local didSignedOverflow = _getBit(7, BAND(
        BNOT(BXOR(regs.A, operand)),    -- A has the same sign as val
        BXOR(regs.A, result)        -- A has a different sign from result
    ))

    regs.A = _u8(result)

    _setFlag("C", regs, BAND(result, 0xFF00) > 0)
    _setFlag("V", regs, didSignedOverflow)
    _setZeroAndNegative(regs, regs.A)
end


function m.ADC(regs: Regs, addr: u16, mem: IMemory)
    _adder(regs, mem.Read(addr))
end


function m.SBC(regs: Regs, addr: u16, mem: IMemory)
    _adder(regs, BXOR(mem.Read(addr), 0xFF))
end


--[[
    The documentation says that Z is set if the accumulator is 0, but
    it also says that Z is set if "the last operation resulted in 0",
    and OLC's emulator also sees it that way. So, that's what I'm going with
]]
function m.ASL(regs: Regs, addr: u16?, mem: IMemory)
    local val = if addr then mem.Read(addr) else regs.A
    local result = LSHIFT(val, 1)
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        mem.Write(addr, result_u8)
    end

    _setFlag("C", regs, _getBit(8, result))
    _setZeroAndNegative(regs, result_u8)
end

-- A,Z,N = A&M
function m.AND(regs: Regs, addr: u16, mem: IMemory)
    regs.A = BAND(regs.A, mem.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end


--[[
    Branching
]]

function _branch(regs: Regs, addr: u16, mem: IMemory)
    regs.PC = _u16(regs.PC + _s8ToS16(mem.Read(addr)))
    return BAND(oldPc, 0xFF00) ~= BAND(regs.PC, 0xFF00)
end


function _newBranch(_shouldBranchPredicate: (regs: Regs) -> boolean)
    return function(regs: Regs, addr: u16, mem: IMemory)
        if not _shouldBranchPredicate(regs) then return 0 end
        return 1 + if _branch(regs, addr, mem) then 1 else 0
    end
end


m.BCC = _newBranch(
    function(regs: Regs) return not _getFlag("C", regs.STATUS) end
)

m.BCS = _newBranch(
    function(regs: Regs) return _getFlag("C", regs.STATUS) end
)

m.BEQ = _newBranch(
    function(regs: Regs) return _getFlag("Z", regs.STATUS) end
)

m.BNE = _newBranch(
    function(regs: Regs) return not _getFlag("Z", regs.STATUS) end
)

m.BPL = _newBranch(
    function(regs: Regs) return not _getFlag("N", regs.STATUS) end
)

m.BMI = _newBranch(
    function(regs: Regs) return _getFlag("N", regs.STATUS) end
)


return m