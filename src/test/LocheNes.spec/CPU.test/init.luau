--!nolint UnknownGlobal
--!nocheck


local modules = {
    Instructions = require(script["Instructions.test"]),
    AddressingModes = require(script["AddressingModes.test"]),
    NesTest = require(script["Nestest.test"])
}

local m = require(script.Parent.Parent.Parent.Shared.CPU)

return function()
    describe("Instructions", modules.Instructions)
    describe("AddressingModes", modules.AddressingModes)
    describe("Nestest", modules.NesTest)

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
end