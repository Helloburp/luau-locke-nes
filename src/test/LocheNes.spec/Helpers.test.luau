
--!nolint UnknownGlobal
--!nocheck

local m = require(script.Parent.Parent.Parent.Shared.Helpers)

return function()
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

    describe("Signed u8 to Signed u16", function()
        it("Arithmetic", function()
            local addr, offset = 0xC731, 0x04
            local s16Offset = m.Signed8ToSigned16(offset)
            local result = m.WrapU16(addr + s16Offset)

            expect(s16Offset).to.equal(0x0004)
            expect(result).to.equal(0xC735)
        end)
    end)

    describe("Set value in bitfield", function()
        
        local function _newTest(oldBitfield: number, mask: number, offset: number, newValue: number, expectedValue: number)
            return function()
                local bitfield = m.SetValueInBitfield(oldBitfield, mask, offset, newValue)
                expect(bitfield).to.equal(expectedValue)
            end
        end
        it("Arithmetic", function()
            _newTest(
                0b0000, 0b1100, 2,
                0b11, 0b1100
            )()
            _newTest(
                0b0100, 0b1100, 2,
                0b10, 0b1000
            )()
            _newTest(
                0b1111, 0b1100, 2,
                0b00, 0b0011
            )()
            _newTest(
                0b1111, 0b1100, 2,
                0b11, 0b1111
            )()
            _newTest(
                0b1111, 0b0110, 1,
                0b00, 0b1001
            )()
        end)
    end)

    describe("Get value in bitfield", function()
        
        local function _newTest(bitfield: number, mask: number, offset: number, expectedValue: number)
            return function()
                local value = m.GetValueFromBitfield(bitfield, mask, offset)
                expect(value).to.equal(expectedValue)
            end
        end
        it("Arithmetic", function()
            _newTest(0b0000, 0b1100, 2, 0b00)()
            _newTest(0b1100, 0b1100, 2, 0b11)()
            _newTest(0b1100, 0b0100, 2, 0b01)()
            _newTest(0b1000, 0b0100, 2, 0b00)()
            _newTest(0b1010, 0b0110, 1, 0b01)()
            _newTest(0b1110, 0b0110, 1, 0b11)()
        end)
    end)
end