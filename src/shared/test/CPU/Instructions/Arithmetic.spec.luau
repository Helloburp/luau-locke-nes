--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent
local T = require(root._TYPES)
type u8 = T.u8
type Regs = T.Registers

local BNOT, BXOR, BAND = bit32.bnot, bit32.bxor, bit32.band


return function()
    local m = require(root.Instructions)
    local h = require(root.Helpers)


    describe("Arithmetic", function()
        local regs = h.NewRegisters()
        local mem = h.NewMemory()


        local function _testFlag(flag: T.EStatusFlag, expected: boolean)
            expect(h.GetFlag(flag, regs.STATUS)).to.equal(expected)
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

        beforeEach(function()
            regs = h.NewRegisters()
            mem = h.NewMemory()
        end)

        describe("ADC", function()
            it("0 + 5 (All flags false)", function()
                m.ADC(regs, 5)
                expect(regs.A).to.equal(5)

                _testZeroAndNegative(regs.A)
                _testOverflow(0, 5, regs.A)
                _testFlag("C", false)
            end)

            it("250 + 6 (Z, C)", function()
                regs.A = 250
                m.ADC(regs, 6)
                expect(regs.A).to.equal(0)

                _testZeroAndNegative(regs.A)
                _testOverflow(250, 6, regs.A)
                _testFlag("C", true)
            end)
            it("80 + 80 w/ Carry (Carry addition, V, N)", function()
                regs.A = 80
                h.SetFlag("C", regs, true)
                m.ADC(regs, 80)
                expect(regs.A).to.equal(161)

                _testOverflow(80, 80, regs.A)
                _testFlag("C", false)
            end)
        end)

        describe("SBC", function()
            it("10 - 5 = 5 (C=true) (C)", function()
                regs.A = 10
                h.SetFlag("C", regs, true)
                m.SBC(regs, 5)
                expect(regs.A).to.equal(5)

                _testZeroAndNegative(regs.A)
                _testOverflow(10, -5%256, regs.A)
                _testFlag("C", true)
            end)

            it("5 - 10 - 1 = -6 (C=false) (N)", function()
                regs.A = 5
                m.SBC(regs, 10)
                expect(regs.A).to.equal(-6%256)

                _testZeroAndNegative(regs.A)
                _testOverflow(5, -10%256, regs.A)
                _testFlag("C", false)
            end)

            it("-80 - 80 - 1 = 94 (C, V)", function()
                regs.A = -80%256
                m.SBC(regs, 80)
                expect(regs.A)
                    .to.equal((BXOR(80, 0xFF) + BXOR(80, 0xFF) + 1)%256)
                _testZeroAndNegative(regs.A);
                _testOverflow(-80%256, -80%256, regs.A)
                _testFlag("C", true)
            end)
        end)

        describe("ASL", function()
            it("8 << 1 = 16 Implied", function()
                m.ASL(regs, 8, nil, {_t = "Implied"})
                expect(regs.A).to.equal(16)

                _testZeroAndNegative(regs.A)
                _testFlag("C", false)
            end)
            it("128 << 1 = 0 Absolute (C, Z)", function()
                m.ASL(regs, 128, mem, {_t = "Absolute", Address = 0})
                expect(mem.Read(0)).to.equal(0)

                _testZeroAndNegative(mem.Read(0))
                _testFlag("C", true)
            end)
            it("65 << 1 = 130 Absolute (N)", function()
                m.ASL(regs, 65, mem, {_t = "Absolute", Address = 5})
                expect(mem.Read(5)).to.equal(130)

                _testZeroAndNegative(mem.Read(5))
                _testFlag("C", false)
            end)
        end)
    end)
end