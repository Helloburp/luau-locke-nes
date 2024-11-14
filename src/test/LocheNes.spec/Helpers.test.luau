
--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Shared
local m = require(inst_root.Core.Helpers)

local TEST_MASKS = {
    A = 0b11110000,
    B = 0b00001000,
    C = 0b00000111,
}

return function()
    describe("Bitfield Arithmetic", function()
        local Bitfield = m.NewBitfieldFunctions(TEST_MASKS)
        local exampleBitfield = Bitfield.Compose{
            A = 0b0101,
            B = 0b0,
            C = 0b011,
        }

        it("Compose", function()
            expect(exampleBitfield).to.equal(0b01010011)
        end)
        it("Get", function()
            expect(Bitfield.Get("A", exampleBitfield)).to.equal(0b0101)
            expect(Bitfield.Get("B", exampleBitfield)).to.equal(0b0)
            expect(Bitfield.Get("C", exampleBitfield)).to.equal(0b011)
        end)
        it("GetBit", function()
            expect(Bitfield.GetBit("B", exampleBitfield)).to.equal(false)
            expect(Bitfield.GetBit("A", exampleBitfield)).to.equal(true)
        end)
    end)
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

    describe("U8 Reversal", function()
        local function _newTest(w: number, result: number)
            expect(m.ReverseBitOrderU8(w)).to.equal(result)
        end

        it("Arithmetic", function()
            _newTest(0xFF, 0xFF)
            _newTest(0xF0, 0x0F)
            _newTest(0x0F, 0xF0)
            _newTest(0x80, 0x01)
            _newTest(0x08, 0x10)
            _newTest(0b10101010, 0b01010101)
            _newTest(0b01010101, 0b10101010)
        end)
    end)
end