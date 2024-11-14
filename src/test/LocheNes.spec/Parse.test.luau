--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Shared
local Parse = require(inst_root.API.Parse)

local inst_util = script.Parent.Parent.Util
local NESTEST_ROM = require(inst_util["Nestest.constants"]).ROM

local RU8 = buffer.readu8

return function()

    it("Converts string to buffer as expected", function()
        local rom = Parse.HexStrToBuffer(NESTEST_ROM)
        expect(buffer.len(rom)).to.equal((0x6010))
        expect(RU8(rom, 0)).to.equal(0x4E)
    end)

    local rom = Parse.HexStrToBuffer(NESTEST_ROM)

    it("Computes header as expected", function()
        local header = Parse.Header(rom)

        expect(header.PrgRom16kBankCount).to.equal(1)
        expect(header.ChrMemory._t).to.equal("Rom")
        assert(header.ChrMemory._t == "Rom")
        expect(header.ChrMemory.ChrRom8kBankCount).to.equal(1)
        expect(header.NametableArrangement).to.equal("Horizontal")
        expect(header.MapperId).to.equal(0)
        expect(header.HasTrainer).to.equal(false)
        expect(header.HasPersistentMemory).to.equal(false)
    end)

    it("Computes PrgRom offset 0 as expected", function()
        local header = Parse.Header(rom)
        local offset = Parse.PrgRomOffset(header.HasTrainer, 0)
        expect(offset).to.equal(16)
        expect(RU8(rom, offset)).to.equal(0x4c)
    end)

    it("Computes PrgRom offset 1 as expected", function()
        local header = Parse.Header(rom)
        local offset = Parse.PrgRomOffset(header.HasTrainer, 1)
        expect(offset).to.equal(16 + (2^14))    -- 0x4010
        expect(RU8(rom, offset)).to.equal(0x00)
    end)

    it("Computes ChrMem offset 0 as expected", function()
        local header = Parse.Header(rom)
        local offset = Parse.ChrMemOffset(header.HasTrainer, 1, 0)
        expect(offset).to.equal(16 + (2^14))    -- 0x4010
        expect(RU8(rom, offset)).to.equal(0x00)
        expect(RU8(rom, offset + 0x20)).to.equal(0x80)
    end)
end