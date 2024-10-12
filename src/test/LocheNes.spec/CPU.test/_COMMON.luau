--!nolint UnknownGlobal
--!nocheck


local root = script.Parent.Parent.Parent.Parent.Shared
local cpu = require(root.CPU)
local h = require(root.Helpers)
local C = require(root["CPU.constants"])
local T = require(root["CPU.types"])
type u8 = T.u8

local BAND, BXOR, BNOT =
    bit32.band, bit32.bxor, bit32.bnot

local regs = cpu.NewRegisters()
local mem = h.NewDebugBus()
local oldFlags = {}     -- Flags before instruction execution
local testedFlags = {}  -- Flags that were checked during testing

local StatusFlag = C.BITFIELD_UTIL.StatusFlag

return function(expect: any)

    local function _testFlag(flag: T.EStatusFlag, expected: boolean)
        expect(StatusFlag.GetBit(flag, regs.STATUS)).to.equal(expected)
        table.insert(testedFlags, flag)
    end

    local function _testZeroAndNegative(result: u8)
        _testFlag("Z", result == 0)
        _testFlag("N", BAND(result, 0x80) > 0)
    end

    local function _testOverflow(op1: u8, op2: u8, result: u8)
        -- V = !((M^N) & 0x80) && ((M^result) & 0x80)
        _testFlag("V", h.GetBit(7, BAND(
                BNOT(BXOR(op1, op2)), -- op1 has the same sign as op2
                BXOR(op1, result) -- op1 has a different sign from result
            ))
        )
    end

    local function _testInstructionExecution(
        instruction: T.GenericInstruction,
        addr: T.u16, expectedCycles: number
    )
        oldFlags = regs.STATUS
        local cycles = instruction(regs, addr, mem) or 0
        expect(cycles).to.equal(expectedCycles)
    end

    local function _testNoUntestedFlagsChanged()
        for flag, _ in pairs(C.StatusFlagMasks) do
            if table.find(testedFlags, flag) then continue end
            expect(StatusFlag.GetBit(flag, regs.STATUS))
                .to.equal(StatusFlag.GetBit(flag, oldFlags))
        end
    end

    local m = {}

    m.Regs = function() return regs end
    m.Mem = function() return mem end
    m.TestFlag = _testFlag
    m.TestZeroAndNegative = _testZeroAndNegative
    m.TestOverflow = _testOverflow
    m.TestInstructionExecution = _testInstructionExecution
    m.TestNoUntestedFlagsChanged = _testNoUntestedFlagsChanged
    m.SetFlag = function(flag: T.EStatusFlag, value: boolean)
        regs.STATUS = StatusFlag.SetBit(flag, regs.STATUS, value)
    end
    m.GetFlag = function(flag: T.EStatusFlag)
        return StatusFlag.GetBit(flag, regs.STATUS)
    end
    m.Reset = function()
        regs = cpu.NewRegisters()
        mem = h.NewDebugBus()
        oldFlags = {}
        testedFlags = {}
    end

    m.UnimplementedTest = function()
        it("Unimplemented", function() expect(false).to.be.ok() end)
    end

    return m
end