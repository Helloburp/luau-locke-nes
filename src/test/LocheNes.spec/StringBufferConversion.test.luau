
--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Shared
local StringBufferConversion = require(inst_root.Auxiliary.StringBufferConversion)

local inst_util = script.Parent.Parent.Util
local NESTEST_ROM = require(inst_util["Nestest.constants"]).ROM

local RU8 = buffer.readu8

return function()

    it("Converts string to buffer as expected", function()
        local rom = StringBufferConversion.HexStrToBuffer(NESTEST_ROM)
        expect(buffer.len(rom)).to.equal((0x6010))
        expect(RU8(rom, 0)).to.equal(0x4E)
    end)

    it("Converts module with correct length", function()
        local rom = StringBufferConversion.BufferFromModuleParent(
            inst_util.MapperTestRoms["M1_P128K_C128K_W8K.nes"]
        )
        expect(buffer.len(rom)).to.equal(0x40010)
    end)

    it("Converts module with correct values", function()
        local rom = StringBufferConversion.BufferFromModuleParent(
            inst_util.MapperTestRoms["M1_P128K_C128K_W8K.nes"]
        )
        expect(RU8(rom, 0)).to.equal(0x4E)
        expect(RU8(rom, 0x3010)).to.equal(0x60)
        expect(RU8(rom, 0x3FE0C)).to.equal(0x7F)
    end)
end