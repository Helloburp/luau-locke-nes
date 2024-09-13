--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    local function _testLoadRegisterWithMemory(instruction, reg, val, addr)
        local regs, mem = c.Regs(), c.Mem()

        mem.Write(addr, val)
        c.TestInstructionExecution(instruction, addr, 0)

        expect(regs[reg]).to.equal(val)
        c.TestZeroAndNegative(val)
        c.TestNoUntestedFlagsChanged()
    end

    local function _testStoreInMemory(instruction, reg, val, addr)
        local regs, mem = c.Regs(), c.Mem()
        regs[reg] = val

        c.TestInstructionExecution(instruction, addr, 0)

        expect(mem.Read(addr)).to.equal(val)
        c.TestNoUntestedFlagsChanged()
    end

    local function _testTransfer(instruction, reg, reg2, val)
        local regs = c.Regs()
        regs[reg] = val
        c.TestInstructionExecution(instruction, nil, 0)

        expect(regs[reg2]).to.equal(val)
        c.TestZeroAndNegative(regs[reg2])
        c.TestNoUntestedFlagsChanged()
    end

    local function _newLoadDescribeBlock(instruction, reg)
        return function()
            it("Loads as expected", function()
                _testLoadRegisterWithMemory(instruction, reg, 0x05, 0x0000)
                _testLoadRegisterWithMemory(instruction, reg, 0xFF, 0x00CE)
                _testLoadRegisterWithMemory(instruction, reg, 0x00, 0xFFFF)
            end)
        end
    end

    local function _newStoreDescribeBlock(instruction, reg)
        return function()
            it("Stores as expected", function()
                _testStoreInMemory(instruction, reg, 0x05, 0x0000)
                _testStoreInMemory(instruction, reg, 0xFF, 0x00CE)
                _testStoreInMemory(instruction, reg, 0x00, 0xFFFF)
            end)
        end
    end

    local function _newTransferDescribeBlock(instruction, reg, reg2)
        return function()
            it("Transfers as expected", function()
                _testTransfer(instruction, reg, reg2, 0xFF)
                _newTransferDescribeBlock(instruction, reg, reg2, 0x00)
                _newTransferDescribeBlock(instruction, reg, reg2, 0x05)
            end)
        end
    end

    describe("LDA", _newLoadDescribeBlock(m.LDA, "A"))
    describe("LDX", _newLoadDescribeBlock(m.LDX, "X"))
    describe("LDY", _newLoadDescribeBlock(m.LDY, "Y"))
    describe("STA", _newStoreDescribeBlock(m.STA, "A"))
    describe("STX", _newStoreDescribeBlock(m.STX, "X"))
    describe("STY", _newStoreDescribeBlock(m.STY, "Y"))
    describe("TAX", _newTransferDescribeBlock(m.TAX, "A", "X"))
    describe("TAY", _newTransferDescribeBlock(m.TAY, "A", "Y"))
    describe("TSX", _newTransferDescribeBlock(m.TSX, "SP", "X"))
    describe("TXA", _newTransferDescribeBlock(m.TXA, "X", "A"))
    describe("TXS", _newTransferDescribeBlock(m.TXS, "X", "SP"))
    describe("TYA", _newTransferDescribeBlock(m.TYA, "Y", "A"))
end