

local T = require(script.Parent._TYPES)
type Regs = T.Registers
type u8 = T.u8
type u16 = T.u16
type IMemory = T.IMemory

local BAND, BOR, BNOT, LSHIFT =
    bit32.band, bit32.bor, bit32.bnot, bit32.lshift

local C = require(script.Parent._CONSTANTS)

local m = {}

function _flagToBitIndex(flag: T.EStatusFlag)
    local bitIndex = table.find(C.StatusFlagOrder, flag)
        or error(`Invalid flag input: {flag}`)
    bitIndex -= 1
    return bitIndex
end

function m.SetBit(bitIndex: number, word: number, value: boolean): number
    local mask = LSHIFT(1, bitIndex)
    return if value
        then BOR(word, mask)
        else BAND(word, BNOT(mask))
end

function m.GetBit(bitIndex: number, word: number): boolean
    return BAND(word, LSHIFT(1, bitIndex)) > 0
end

function m.SetFlag(flag: T.EStatusFlag, regs: Regs, value: boolean): Regs
    regs.STATUS = m.SetBit(_flagToBitIndex(flag), regs.STATUS, value)
    return regs
end

function m.GetFlag(flag: T.EStatusFlag, status: u8): boolean
    return m.GetBit(_flagToBitIndex(flag), status)
end

function m.WrapU8(word: number): u8
    return word%256
end

function m.WrapU16(word: number): u16
    return word%65536
end

function m.NewRegisters(): Regs
    return { A = 0, X = 0, Y = 0, PC = 0, SP = 0, STATUS = 0 }
end

function m.NewMemory(): IMemory
    local t = {}
    return {
        Read = function(i) return t[i] end,
        Write = function(i, v) t[i] = v end
    }
end

return m