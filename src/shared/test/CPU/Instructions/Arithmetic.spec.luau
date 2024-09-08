--!nolint UnknownGlobal
--!nocheck

return function()
    local root = script.Parent.Parent.Parent.Parent
    local m = require(root.Instructions)
    local h = require(root.Helpers)
    describe("Arithmetic", function()
        local regs = h.NewRegisters()

        beforeAll(function()
            regs = h.NewRegisters()
        end)

        describe("ADC", function()
            it("0 + 5", function()
                m.ADC(regs, 5)
                expect(regs.A).to.equal(5)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(false)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
                expect(h.GetFlag("C", status)).to.equal(false)
            end)

            it("250 + 6", function()
                regs.A = 250
                m.ADC(regs, 6)
                expect(regs.A).to.equal(0)

                local status = regs.STATUS
                expect(h.GetFlag("Z", status)).to.equal(true)
                expect(h.GetFlag("V", status)).to.equal(false)
                expect(h.GetFlag("N", status)).to.equal(false)
                expect(h.GetFlag("C", status)).to.equal(true)
            end)
        end)
    end)
end