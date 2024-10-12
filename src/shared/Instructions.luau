--[[ References
    https://www.nesdev.org/obelisk-6502-guide/reference.html
    https://www.righto.com/2012/12/the-6502-overflow-flag-explained.html
]]

local T = require(script.Parent["CPU.types"])
local C = require(script.Parent["CPU.constants"])
type Regs = T.Registers

local T_H = require(script.Parent["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Bus = T_H.Bus


local BAND, BXOR, BNOT, BOR =
    bit32.band, bit32.bxor, bit32.bnot, bit32.bor
local LSHIFT, RSHIFT = bit32.lshift, bit32.rshift

local h = require(script.Parent.Helpers)
local _getBit, _setBit = h.GetBit, h.SetBit
local _u8, _u16 = h.WrapU8, h.WrapU16
local _s8ToS16 = h.Signed8ToSigned16

local m = {}

local StatusFlag = C.BITFIELD_UTIL.StatusFlag

local _getFlag = StatusFlag.GetBit

function _setFlag(flag: T.EStatusFlag, regs: Regs, value: boolean): Regs
    regs.STATUS = StatusFlag.SetBit(flag, regs.STATUS, value)
    return regs
end



-- Empty stack; SP points to the spot where the next value is set.
function _push(regs: Regs, val: u8, bus: Bus)
    bus.Write(0x100 + regs.SP, val)
    regs.SP = _u8(regs.SP - 1)
end

function _pull(regs: Regs, bus: Bus): u8
    regs.SP = _u8(regs.SP + 1)
    return bus.Read(0x100 + regs.SP)
end

function _setZeroAndNegative(regs: Regs, result: u8)
    _setFlag("Z", regs, result == 0)
    _setFlag("N", regs, _getBit(7, result))
end


--[[
    Arithmetic
]]


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


function m.ADC(regs: Regs, addr: u16, bus: Bus)
    _adder(regs, bus.Read(addr))
end


function m.SBC(regs: Regs, addr: u16, bus: Bus)
    _adder(regs, BXOR(bus.Read(addr), 0xFF))
end


--[[
    Shift And Rotate
]]

--[[
    The documentation says that Z is set if the accumulator is 0, but
    it also says that Z is set if "the last operation resulted in 0",
    and OLC's emulator also sees it that way. So, that's what I'm going with
]]
function m.ASL(regs: Regs, addr: u16?, bus: Bus)
    local val = if addr then bus.Read(addr) else regs.A
    local result = LSHIFT(val, 1)
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        bus.Write(addr, result_u8)
    end

    _setFlag("C", regs, _getBit(8, result))
    _setZeroAndNegative(regs, result_u8)
end

function m.LSR(regs: Regs, addr: u16?, bus: Bus)
    local val = if addr then bus.Read(addr) else regs.A
    local result = RSHIFT(val, 1)

    if not addr then
        regs.A = result
    else
        bus.Write(addr, result)
    end

    _setFlag("C", regs, val%2 > 0)
    _setZeroAndNegative(regs, result)
end

function m.ROL(regs: Regs, addr: u16?, bus: Bus)
    local val = if addr then bus.Read(addr) else regs.A
    local result = LSHIFT(val, 1) + if _getFlag("C", regs.STATUS) then 1 else 0
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        bus.Write(addr, result_u8)
    end

    _setFlag("C", regs, BAND(val, 0x80) > 0)
    _setZeroAndNegative(regs, result_u8)
end

function m.ROR(regs: Regs, addr: u16?, bus: Bus)
    local val = if addr then bus.Read(addr) else regs.A
    local result = RSHIFT(val, 1) + if _getFlag("C", regs.STATUS) then 128 else 0
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        bus.Write(addr, result_u8)
    end

    _setFlag("C", regs, val%2 > 0 )
    _setZeroAndNegative(regs, result_u8)
end


--[[
    Logic
]]

-- A,Z,N = A&M
function m.AND(regs: Regs, addr: u16, bus: Bus)
    regs.A = BAND(regs.A, bus.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end

function m.EOR(regs: Regs, addr: u16, bus: Bus)
    regs.A = BXOR(regs.A, bus.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end

function m.ORA(regs: Regs, addr: u16, bus: Bus)
    regs.A = BOR(regs.A, bus.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end


--[[
    Branching
]]

-- Returns whether branch led to new page. Addr is given by REL addressing mode
function _branch(regs: Regs, addr: u16, bus: Bus): boolean
    local oldPc = regs.PC
    regs.PC = addr
    return BAND(oldPc, 0xFF00) ~= BAND(regs.PC, 0xFF00)
end


function _newBranch(_shouldBranchPredicate: (regs: Regs) -> boolean)
    return function(regs: Regs, addr: u16, bus: Bus)
        if not _shouldBranchPredicate(regs) then return 0 end
        return 1 + if _branch(regs, addr, bus) then 1 else 0
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

m.BVS = _newBranch(
    function(regs: Regs) return _getFlag("V", regs.STATUS) end
)

m.BVC = _newBranch(
    function(regs: Regs) return not _getFlag("V", regs.STATUS) end
)


--[[
    Transfer
]]

function _transferToRegister(regs: Regs, reg: string, addr: u16, bus: Bus)
    regs[reg] = bus.Read(addr)
    _setZeroAndNegative(regs, regs[reg])
end

function _newTransferToRegister(reg: string)
    return function(regs: Regs, addr: u16, bus: Bus)
        _transferToRegister(regs, reg, addr, bus)
    end
end

m.LDA = _newTransferToRegister("A")
m.LDX = _newTransferToRegister("X")
m.LDY = _newTransferToRegister("Y")

function _storeFromRegister(regs: Regs, reg: string, addr: u16, bus: Bus)
    bus.Write(addr, regs[reg])
end

function _newStoreFromRegister(reg: string)
    return function(regs: Regs, addr: u16, bus: Bus)
        _storeFromRegister(regs, reg, addr, bus)
    end
end

m.STA = _newStoreFromRegister("A")
m.STX = _newStoreFromRegister("X")
m.STY = _newStoreFromRegister("Y")

function _transferRegisterToRegister(regs: Regs, regFrom: string, regTo: string)
    regs[regTo] = regs[regFrom]
    _setZeroAndNegative(regs, regs[regTo])
end

function _newTransferRegisterToRegister(regFrom: string, regTo: string)
    -- Transferring to the stack pointer doesn't trip N and Z flags.
    if regTo ~= "SP" then
        return function(regs: Regs)
            _transferRegisterToRegister(regs, regFrom, regTo)
        end
    else
        return function(regs: Regs)
            regs[regTo] = regs[regFrom]
        end
    end
end

m.TAX = _newTransferRegisterToRegister("A", "X")
m.TAY = _newTransferRegisterToRegister("A", "Y")
m.TSX = _newTransferRegisterToRegister("SP", "X")
m.TXA = _newTransferRegisterToRegister("X", "A")
m.TXS = _newTransferRegisterToRegister("X", "SP")
m.TYA = _newTransferRegisterToRegister("Y", "A")


--[[
    Stack
]]

function m.PHA(regs: Regs, addr: u16, bus: Bus)
    _push(regs, regs.A, bus)
end

function m.PHP(regs: Regs, addr: u16, bus: Bus)
    _push(regs, BOR(regs.STATUS, 0b00110000), bus)
end

function m.PLA(regs: Regs, addr: u16, bus: Bus)
    regs.A = _pull(regs, bus)
    _setZeroAndNegative(regs, regs.A)
end

function m.PLP(regs: Regs, addr: u16, bus: Bus)
    regs.STATUS = BAND(_pull(regs, bus), 0b11101111)
    _setFlag("U", regs, true)
end


--[[
    Decrements & Increments
]]

local function _newRegisterIncrement(reg: string, delta: number)
    return function(regs: Regs)
        regs[reg] = _u8(regs[reg] + delta)
        _setZeroAndNegative(regs, regs[reg])
    end
end

local function _newMemoryIncrement(delta: number)
    return function(regs: Regs, addr: u16, bus: Bus)
        bus.Write(addr, _u8(bus.Read(addr) + delta))
        _setZeroAndNegative(regs, bus.Read(addr))
    end
end

m.DEC = _newMemoryIncrement(-1)
m.INC = _newMemoryIncrement(1)

m.DEX = _newRegisterIncrement("X", -1)
m.DEY = _newRegisterIncrement("Y", -1)
m.INX = _newRegisterIncrement("X", 1)
m.INY = _newRegisterIncrement("Y", 1)


--[[
    Flag
]]

local function _newSetFlag(flag: T.EStatusFlag, value: boolean)
    return function(regs: Regs)
        _setFlag(flag, regs, value)
    end
end

m.CLC = _newSetFlag("C", false)
m.CLD = _newSetFlag("D", false)
m.CLI = _newSetFlag("I", false)
m.CLV = _newSetFlag("V", false)
m.SEC = _newSetFlag("C", true)
m.SED = _newSetFlag("D", true)
m.SEI = _newSetFlag("I", true)


local function _newCompare(reg: string)
    return function(regs: Regs, addr: u16, bus: Bus)
        local val = regs[reg] + _u8(BNOT(bus.Read(addr))) + 1
        _setFlag("C", regs, val > 255)
        _setZeroAndNegative(regs, _u8(val))
    end
end

m.CMP = _newCompare("A")
m.CPX = _newCompare("X")
m.CPY = _newCompare("Y")


function _pushPc(regs: Regs, bus: Bus, offset: number)
    _push(regs, RSHIFT(_u16(regs.PC + offset), 8), bus)
    _push(regs, _u8(regs.PC + offset), bus)
end

-- JMP straight up uses the address provided...
function m.JMP(regs: Regs, addr: u16, bus: Bus)
    regs.PC = addr
end

function m.JSR(regs: Regs, addr: u16, bus: Bus)
    --[[
        There is a test for the stack overwritting the jump
        location. I'm not sure how this would work on a real 6502,
        but I am assuming the jump happens as initially expected.
    ]]
    _pushPc(regs, bus, -1)
    regs.PC = addr
end

function m.RTS(regs: Regs, addr: u16, bus: Bus)
    local lo = _pull(regs, bus)
    local hi = _pull(regs, bus)
    regs.PC = _u16(LSHIFT(hi, 8) + lo + 1)
end


--[[
    Interrupts
]]

function m.BRK(regs: Regs, addr: u16, bus: Bus)
    _pushPc(regs, bus, 2)
    local pushedStatus = BOR(regs.STATUS, C.StatusFlagMasks["B" :: T.EStatusFlag])
    _push(regs, pushedStatus, bus)
    _setFlag("I", regs, true)

    local lo = bus.Read(0xFFFE)
    local hi = bus.Read(0xFFFF)
    regs.PC = LSHIFT(hi, 8) + lo
end


function m.RTI(regs: Regs, addr: u16, bus: Bus)
    local pulledStatus = BAND(_pull(regs, bus), 0b11101111)
    regs.STATUS = pulledStatus
    _setFlag("U", regs, true)
    local lo = _pull(regs, bus)
    local hi = _pull(regs, bus)
    regs.PC = LSHIFT(hi, 8) + lo
end


--[[
    Misc
]]

function m.NOP() end

function m.BIT(regs: Regs, addr: u16, bus: Bus)
    local val = bus.Read(addr)
    _setFlag("N", regs, val > 127)
    _setFlag("V", regs, BAND(val, 0b01000000) > 0)
    _setFlag("Z", regs, BAND(val, regs.A) == 0)
end

function m.XXX() end

return m