--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local inst_core, inst_components = inst_root.Core, inst_root.Components

local m = require(inst_components.PPU)
local h = require(inst_core.Helpers)


return function()
    describe("GetLowPatternTableAddress", function()
        it("Left table", function()
            expect(m.GetLowPatternTableAddress(false, 0, 0))
                .to.equal(0x0000)
            expect(m.GetLowPatternTableAddress(false, 1, 0))
                .to.equal(0x0000 + 16)
            expect(m.GetLowPatternTableAddress(false, 0, 1))
                .to.equal(0x0000 + 1)
        end)
        it("Right table", function()
            expect(m.GetLowPatternTableAddress(true, 0, 1))
                .to.equal(0x1000 + 1)
            expect(m.GetLowPatternTableAddress(true, 1, 1))
                .to.equal(0x1000 + 17)
            expect(m.GetLowPatternTableAddress(true, 1, 7))
                .to.equal(0x1000 + 16 + 7)
        end)
    end)
    describe("GetHighPatternTableAddress", function()
        it("Left table", function()
            expect(m.GetHighPatternTableAddress(false, 0, 0))
                .to.equal(0x0000 + 8)
            expect(m.GetHighPatternTableAddress(false, 1, 0))
                .to.equal(0x0000 + 16 + 8)
            expect(m.GetHighPatternTableAddress(false, 0, 1))
                .to.equal(0x0000 + 1 + 8)
        end)
        it("Right table", function()
            expect(m.GetHighPatternTableAddress(true, 0, 1))
                .to.equal(0x1000 + 1 + 8)
            expect(m.GetHighPatternTableAddress(true, 1, 1))
                .to.equal(0x1000 + 17 + 8)
            expect(m.GetHighPatternTableAddress(true, 1, 7))
                .to.equal(0x1000 + 16 + 7 + 8)
        end)
    end)
    describe("GetPatternValueFromBitPlanes", function()
        expect(m.GetPatternValueFromBitPlanes(0xFF, 0xFF, 0))
            .to.equal(3)
        expect(m.GetPatternValueFromBitPlanes(0xFF, 0xFF, 3))
            .to.equal(3)
        expect(m.GetPatternValueFromBitPlanes(0x00, 0x00, 3))
            .to.equal(0)
        expect(m.GetPatternValueFromBitPlanes(0x00, 0x00, 0))
            .to.equal(0)
        expect(m.GetPatternValueFromBitPlanes(0x02, 0x01, 0))
            .to.equal(2)
        expect(m.GetPatternValueFromBitPlanes(0x02, 0x01, 1))
            .to.equal(1)
    end)
    describe("GetPixelValue", function()
        expect(m.GetPixelValue(0b11, 0b11, false))
            .to.equal(0b01111)
        expect(m.GetPixelValue(0b11, 0b11, true))
            .to.equal(0b11111)
        expect(m.GetPixelValue(0b01, 0b11, true))
            .to.equal(0b11101)
        expect(m.GetPixelValue(0b01, 0b01, true))
            .to.equal(0b10101)
        
        expect(m.GetPixelValue(0b00, 0b11, false))
            .to.equal(0b01100)
        expect(m.GetPixelValue(0b00, 0b11, true))
            .to.equal(0b11100)
    end)
    describe("GetColorByPixelValue", function()
        local bus = h.NewDebugBus()
        bus.Write(0x3F00, 0xEE)

        expect(m.GetColorByPixelValue(0, bus.Read))
            .to.equal(0xEE)

        -- Pattern value is 0; falls to backdrop
        expect(m.GetColorByPixelValue(0b01100, bus.Read))
            .to.equal(0xEE)
    end)

    describe("AttributeAddress Computation", function()
        expect(m.GetAttributeAddressFromVRamAddress(
            0x2000
        )).to.equal(0x23C0)
        expect(m.GetAttributeAddressFromVRamAddress(
            0x2001
        )).to.equal(0x23C0)
        expect(m.GetAttributeAddressFromVRamAddress(
            0x2002
        )).to.equal(0x23C0)
        expect(m.GetAttributeAddressFromVRamAddress(
            0x2009
        )).to.equal(0x23C2)
        expect(m.GetAttributeAddressFromVRamAddress(
            0x200A
        )).to.equal(0x23C2)
    end)
end