
--!nolint UnknownGlobal
--!nocheck

local m = require(script.Parent.Parent.Parent.Shared.Helpers)

return function()
    describe("Helpers", function()
        describe("SetBit", function()
            it("Arithmetic", function()
                expect(m.SetBit(0, 0x00, true)).to.equal(0x01)
                expect(m.SetBit(0, 0x00, false)).to.equal(0x00)
                expect(m.SetBit(1, 0x00, true)).to.equal(0x02)
                expect(m.SetBit(1, 0x01, true)).to.equal(0x03)
            end)

            it("Range", function()
                expect(m.SetBit(8, 0xFF, true)).to.equal(0x01FF)
                expect(m.SetBit(-1, 0xFF, true)).to.throw()
            end)
        end)

        describe("SetFlag", function()
            local _n = function()
                local regs = m.NewRegisters()
                regs.STATUS = bit32.band(regs.STATUS, 0b11111011) -- Disable I flag
                return regs
            end
            it("Arithmetic", function()
                expect(m.SetFlag("C", _n(), true).STATUS).to.equal(0x21)
                expect(m.SetFlag("Z", _n(), true).STATUS).to.equal(0x22)
                expect(m.SetFlag("I", _n(), true).STATUS).to.equal(0x24)
                expect(m.SetFlag("D", _n(), true).STATUS).to.equal(0x28)
                expect(m.SetFlag("B", _n(), true).STATUS).to.equal(0x30)
                expect(m.SetFlag("U", _n(), true).STATUS).to.equal(0x20)
                expect(m.SetFlag("V", _n(), true).STATUS).to.equal(0x60)
                expect(m.SetFlag("N", _n(), true).STATUS).to.equal(0xA0)
            end)

            it("Range", function()
                expect(function()
                    m.SetFlag("O", _n(), true)
                end).to.throw()
                expect(function()
                    m.SetFlag("V", _n(), true)
                end).never.to.throw()
            end)
        end)

        describe("GetBit", function()
            it("Arithmetic", function()
                expect(m.GetBit(0, 0x00)).to.equal(false)
                expect(m.GetBit(0, 0x01)).to.equal(true)
                expect(m.GetBit(1, 0x02)).to.equal(true)
                expect(m.GetBit(1, 0x01)).to.equal(false)
            end)

            it("Range", function()
                expect(m.GetBit(8, 0xFF)).to.equal(false)
                expect(m.GetBit(-1, 0xFF)).to.throw()
            end)
        end)

        describe("GetFlag", function()
            it("Arithmetic", function()
                expect(m.GetFlag("C", 0x01)).to.equal(true)
                expect(m.GetFlag("Z", 0x02)).to.equal(true)
                expect(m.GetFlag("I", 0x04)).to.equal(true)
                expect(m.GetFlag("D", 0x08)).to.equal(true)
                expect(m.GetFlag("B", 0x10)).to.equal(true)
                expect(m.GetFlag("U", 0x20)).to.equal(true)
                expect(m.GetFlag("V", 0x40)).to.equal(true)
                expect(m.GetFlag("N", 0x80)).to.equal(true)
                expect(m.GetFlag("Z", 0x01)).to.equal(false)
            end)

            it("Range", function()
                expect(function()
                    m.GetFlag("O", 0x00)
                end).to.throw()
                expect(function()
                    m.GetFlag("V", 0x00)
                end).never.to.throw()
            end)
        end)

        describe("Signed u8 to Signed u16", function()
            it("Arithmetic", function()
                local addr, offset = 0xC731, 0x04
                local s16Offset = m.Signed8ToSigned16(offset)
                local result = m.WrapU16(addr + s16Offset)

                expect(s16Offset).to.equal(0x0004)
                expect(result).to.equal(0xC735)
            end)
        end)
    end)
end