--[[ References
    https://www.nesdev.org/obelisk-6502-guide/reference.html
    https://www.righto.com/2012/12/the-6502-overflow-flag-explained.html
]]

local T = require(script.Parent._TYPES)
local C = require(script.Parent._CONSTANTS)
type Regs = T.Registers
type u8 = T.u8
type u16 = T.u16
type IMemory = T.IMemory


local BAND, BXOR, BNOT, BOR =
    bit32.band, bit32.bxor, bit32.bnot, bit32.bor
local LSHIFT, RSHIFT = bit32.lshift, bit32.rshift

local Helpers = require(script.Parent.Helpers)
local _getBit, _setBit = Helpers.GetBit, Helpers.SetBit
local _getFlag, _setFlag = Helpers.GetFlag, Helpers.SetFlag
local _u8, _u16 = Helpers.WrapU8, Helpers.WrapU16
local _s8ToS16 = Helpers.Signed8ToSigned16

local m = {}

-- Empty stack; SP points to the spot where the next value is set.
function _push(regs: Regs, val: u8, mem: IMemory)
    mem.Write(C.SP_BASE + regs.SP, val)
    regs.SP = _u8(regs.SP - 1)
end

function _pull(regs: Regs, mem: IMemory): u8
    regs.SP = _u8(regs.SP + 1)
    return mem.Read(C.SP_BASE + regs.SP)
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


function m.ADC(regs: Regs, addr: u16, mem: IMemory)
    _adder(regs, mem.Read(addr))
end


function m.SBC(regs: Regs, addr: u16, mem: IMemory)
    _adder(regs, BXOR(mem.Read(addr), 0xFF))
end


--[[
    Shift And Rotate
]]

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

function m.LSR(regs: Regs, addr: u16?, mem: IMemory)
    local val = if addr then mem.Read(addr) else regs.A
    local result = RSHIFT(val, 1)

    if not addr then
        regs.A = result
    else
        mem.Write(addr, result)
    end

    _setFlag("C", regs, val%2 > 0)
    _setZeroAndNegative(regs, result)
end

function m.ROL(regs: Regs, addr: u16?, mem: IMemory)
    local val = if addr then mem.Read(addr) else regs.A
    local result = LSHIFT(val, 1) + if _getFlag("C", regs.STATUS) then 1 else 0
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        mem.Write(addr, result_u8)
    end

    _setFlag("C", regs, BAND(val, 0x80) > 0)
    _setZeroAndNegative(regs, result_u8)
end

function m.ROR(regs: Regs, addr: u16?, mem: IMemory)
    local val = if addr then mem.Read(addr) else regs.A
    local result = RSHIFT(val, 1) + if _getFlag("C", regs.STATUS) then 128 else 0
    local result_u8 = _u8(result)

    if not addr then
        regs.A = result_u8
    else
        mem.Write(addr, result_u8)
    end

    _setFlag("C", regs, val%2 > 0 )
    _setZeroAndNegative(regs, result_u8)
end


--[[
    Logic
]]

-- A,Z,N = A&M
function m.AND(regs: Regs, addr: u16, mem: IMemory)
    regs.A = BAND(regs.A, mem.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end

function m.EOR(regs: Regs, addr: u16, mem: IMemory)
    regs.A = BXOR(regs.A, mem.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end

function m.ORA(regs: Regs, addr: u16, mem: IMemory)
    regs.A = BOR(regs.A, mem.Read(addr))
    _setZeroAndNegative(regs, regs.A)
end


--[[
    Branching
]]

-- Returns whether branch led to new page
function _branch(regs: Regs, addr: u16, mem: IMemory): boolean
    local oldPc = regs.PC
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

m.BVS = _newBranch(
    function(regs: Regs) return _getFlag("V", regs.STATUS) end
)

m.BVC = _newBranch(
    function(regs: Regs) return not _getFlag("V", regs.STATUS) end
)


--[[
    Transfer
]]

function _transferToRegister(regs: Regs, reg: string, addr: u16, mem: IMemory)
    regs[reg] = mem.Read(addr)
    _setZeroAndNegative(regs, regs[reg])
end

function _newTransferToRegister(reg: string)
    return function(regs: Regs, addr: u16, mem: IMemory)
        _transferToRegister(regs, reg, addr, mem)
    end
end

m.LDA = _newTransferToRegister("A")
m.LDX = _newTransferToRegister("X")
m.LDY = _newTransferToRegister("Y")

function _storeFromRegister(regs: Regs, reg: string, addr: u16, mem: IMemory)
    mem.Write(addr, regs[reg])
end

function _newStoreFromRegister(reg: string)
    return function(regs: Regs, addr: u16, mem: IMemory)
        _storeFromRegister(regs, reg, addr, mem)
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
    return function(regs: Regs)
        _transferRegisterToRegister(regs, regFrom, regTo)
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

function m.PHA(regs: Regs, addr: u16, mem: IMemory)
    _push(regs, regs.A, mem)
end

function m.PHP(regs: Regs, addr: u16, mem: IMemory)
    _push(regs, BOR(regs.STATUS, 0b00110000), mem)
end

function m.PLA(regs: Regs, addr: u16, mem: IMemory)
    regs.A = _pull(regs, mem)
    _setZeroAndNegative(regs, regs.A)
end

function m.PLP(regs: Regs, addr: u16, mem: IMemory)
    regs.STATUS = BAND(_pull(regs, mem), 0b11001111)
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
    return function(regs: Regs, addr: u16, mem: IMemory)
        mem.Write(addr, _u8(mem.Read(addr) + delta))
        _setZeroAndNegative(regs, mem.Read(addr))
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
    return function(regs: Regs, addr: u16, mem: IMemory)
        local val = regs[reg] + _u8(BNOT(mem.Read(addr))) + 1
        _setFlag("C", regs, val > 255)
        _setZeroAndNegative(regs, _u8(val))
    end
end

m.CMP = _newCompare("A")
m.CPX = _newCompare("X")
m.CPY = _newCompare("Y")


function _pushPc(regs: Regs, mem: IMemory, offset: number)
    _push(regs, RSHIFT(_u16(regs.PC + offset), 8), mem)
    _push(regs, _u8(regs.PC + offset), mem)
end

function m.JMP(regs: Regs, addr: u16, mem: IMemory)
    local lo = mem.Read(addr)
    local hi = mem.Read(_u16(addr + 1))
    regs.PC = LSHIFT(hi, 8) + lo
end

function m.JSR(regs: Regs, addr: u16, mem: IMemory)
    --[[
        There is a test for the stack overwritting the jump
        location. I'm not sure how this would work on a real 6502,
        but I am assuming the jump happens as initially expected.
    ]]
    local lo = mem.Read(addr)
    local hi = mem.Read(_u16(addr + 1))
    _pushPc(regs, mem, 2)
    regs.PC = LSHIFT(hi, 8) + lo
end

function m.RTS(regs: Regs, addr: u16, mem: IMemory)
    local lo = _pull(regs, mem)
    local hi = _pull(regs, mem)
    regs.PC = _u16(LSHIFT(hi, 8) + lo + 1)
end


--[[
    Interrupts
]]

function m.BRK(regs: Regs, addr: u16, mem: IMemory)
    _pushPc(regs, mem, 2)
    local pushedStatus = BOR(regs.STATUS, C.StatusFlagMasks["B" :: T.EStatusFlag])
    _push(regs, pushedStatus, mem)
    _setFlag("I", regs, true)

    local lo = mem.Read(0xFFFE)
    local hi = mem.Read(0xFFFF)
    regs.PC = LSHIFT(hi, 8) + lo
end


function m.RTI(regs: Regs, addr: u16, mem: IMemory)
    local pulledStatus = BAND(_pull(regs, mem), 0b11001111)
    regs.STATUS = pulledStatus
    local lo = _pull(regs, mem)
    local hi = _pull(regs, mem)
    regs.PC = LSHIFT(hi, 8) + lo
end


--[[
    Misc
]]

function m.NOP() end

function m.BIT(regs: Regs, addr: u16, mem: IMemory)
    local val = mem.Read(addr)
    _setFlag("N", regs, val > 127)
    _setFlag("V", regs, BAND(val, 0b01000000) > 0)
    _setFlag("Z", regs, BAND(val, regs.A) == 0)
end

function m.XXX() end

return m