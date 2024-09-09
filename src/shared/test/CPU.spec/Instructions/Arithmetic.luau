--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent
local m = require(root.Instructions)
local _newCommon = require(script.Parent._COMMON)

local BXOR = bit32.bxor

return function()
    local c = _newCommon(expect)

    --[[ A,Z,C,N = A+M+C
        C = overflow in bit 7;  Z = if A = 0
        V = wrong sign bit;     N = if bit 7 of A is set
    ]]
    describe("ADC", function()
        it("0 + 5 (All flags false)", function()
            local regs = c.Regs()
            m.ADC(regs, 5)
            expect(regs.A).to.equal(5)

            c.TestZeroAndNegative(regs.A)
            c.TestOverflow(0, 5, regs.A)
            c.TestFlag("C", false)
        end)

        it("250 + 6 (Z, C)", function()
            local regs = c.Regs()
            regs.A = 250
            m.ADC(regs, 6)
            expect(regs.A).to.equal(0)

            c.TestZeroAndNegative(regs.A)
            c.TestOverflow(250, 6, regs.A)
            c.TestFlag("C", true)
        end)
        it("80 + 80 w/ Carry (Carry addition, V, N)", function()
            local regs = c.Regs()
            regs.A = 80
            c.SetFlag("C", regs, true)
            m.ADC(regs, 80)
            expect(regs.A).to.equal(161)

            c.TestOverflow(80, 80, regs.A)
            c.TestFlag("C", false)
        end)
    end)

    --[[ A,Z,C,N = A-M-(1-C)
        C = overflow in bit 7;  Z = if A = 0
        V = wrong sign bit;     N = if bit 7 of A is set
    ]]
    describe("SBC", function()
        it("10 - 5 = 5 (C=true) (C)", function()
            local regs = c.Regs()
            regs.A = 10
            c.SetFlag("C", regs, true)
            m.SBC(regs, 5)
            expect(regs.A).to.equal(5)

            c.TestZeroAndNegative(regs.A)
            c.TestOverflow(10, -5%256, regs.A)
            c.TestFlag("C", true)
        end)

        it("5 - 10 - 1 = -6 (C=false) (N)", function()
            local regs = c.Regs()
            regs.A = 5
            m.SBC(regs, 10)
            expect(regs.A).to.equal(-6%256)

            c.TestZeroAndNegative(regs.A)
            c.TestOverflow(5, -10%256, regs.A)
            c.TestFlag("C", false)
        end)

        it("-80 - 80 - 1 = 94 (C, V)", function()
            local regs = c.Regs()
            regs.A = -80%256
            m.SBC(regs, 80)
            expect(regs.A)
                .to.equal((BXOR(80, 0xFF) + BXOR(80, 0xFF) + 1)%256)
            c.TestZeroAndNegative(regs.A);
            c.TestOverflow(-80%256, -80%256, regs.A)
            c.TestFlag("C", true)
        end)
    end)

    --[[ A,Z,C,N = M*2 or M,Z,C,N = M*2
        C = contents of old bit 7;  Z = Result is zero
        N = Bit 7 of result is set
    ]]
    describe("ASL", function()
        it("8 << 1 = 16 Implied", function()
            local regs = c.Regs()
            m.ASL(regs, 8, nil, {_t = "Implied"})
            expect(regs.A).to.equal(16)

            c.TestZeroAndNegative(regs.A)
            c.TestFlag("C", false)
        end)
        it("128 << 1 = 0 Absolute (C, Z)", function()
            local regs, mem = c.Regs(), c.Mem()
            m.ASL(regs, 128, mem, {_t = "Absolute", Address = 0})
            expect(mem.Read(0)).to.equal(0)

            c.TestZeroAndNegative(mem.Read(0))
            c.TestFlag("C", true)
        end)
        it("65 << 1 = 130 Absolute (N)", function()
            local regs, mem = c.Regs(), c.Mem()
            m.ASL(regs, 65, mem, {_t = "Absolute", Address = 5})
            expect(mem.Read(5)).to.equal(130)

            c.TestZeroAndNegative(mem.Read(5))
            c.TestFlag("C", false)
        end)
    end)
end