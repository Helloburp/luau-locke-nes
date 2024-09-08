--!nolint UnknownGlobal
--!nocheck

return function()
    local root = script.Parent.Parent.Parent.Parent
    local m = require(root.Instructions)
    local h = require(root.Helpers)
    describe("Arithmetic", function()
        local regs = h.NewRegisters()
        local mem = h.NewMemory()

        beforeEach(function()
            regs = h.NewRegisters()
            mem = h.NewMemory()
        end)

        describe("ADC", function()
            it("0 + 5 (All flags false)", function()
                m.ADC(regs, 5)
                expect(regs.A).to.equal(5)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
                expect(h.GetFlag("C", status)).to.equal(false)
            end)

            it("250 + 6 (Z, C)", function()
                regs.A = 250
                m.ADC(regs, 6)
                expect(regs.A).to.equal(0)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(true)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
                expect(h.GetFlag("C", status)).to.equal(true)
            end)
            it("80 + 80 w/ Carry (Carry addition, V, N)", function()
                regs.A = 80
                h.SetFlag("C", regs, true)
                m.ADC(regs, 80)
                expect(regs.A).to.equal(161)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(true)
                expect(h.GetFlag("N", status)).to.equal(true)
                expect(h.GetFlag("C", status)).to.equal(false)
            end)
        end)

        describe("SBC", function()
            it("10 - 5 = 5 (C=true) (C)", function()
                regs.A = 10
                h.SetFlag("C", regs, true)
                m.SBC(regs, 5)
                expect(regs.A).to.equal(5)

                local status = regs.STATUS
                expect(h.GetFlag("C", status)).to.equal(true)
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
            end)

            it("5 - 10 - 1 = -6 (C=false) (Z, N)", function()
                regs.A = 5
                m.SBC(regs, 10)
                expect(regs.A).to.equal(-6%256)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(true)
                expect(h.GetFlag("C", status)).to.equal(false)
            end)

            it("-80 - 80 - 1 = 94 (V)", function()
                regs.A = -80%255
                m.SBC(regs, 80)
                expect(regs.A).to.equal(94)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(true)
                expect(h.GetFlag("N", status)).to.equal(false)
                expect(h.GetFlag("C", status)).to.equal(true)
            end)
        end)

        describe("ASL", function()
            it("8 << 1 = 16 Implied", function()
                m.ASL(regs, 8, nil, {_t = "Implied"})
                expect(regs.A).to.equal(16)

                local status = regs.STATUS
                expect(h.GetFlag("C", status)).to.equal(false)
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
            end)
            it("128 << 1 = 0 Absolute (C, Z)", function()
                m.ASL(regs, 128, mem, {_t = "Absolute", Address = 0})
                expect(mem.Read(0)).to.equal(0)

                local status = regs.STATUS
                expect(h.GetFlag("C", status)).to.equal(true)
                expect(h.GetFlag("Z", status)).to.equal(true)
                expect(h.GetFlag("N", status)).to.equal(false)
            end)
            it("65 << 1 = 130 Absolute (N)", function()
                m.ASL(regs, 65, mem, {_t = "Absolute", Address = 5})
                expect(mem.Read(5)).to.equal(130)

                local status = regs.STATUS
                expect(h.GetFlag("C", status)).to.equal(false)
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(true)
            end)
        end)
    end)
end