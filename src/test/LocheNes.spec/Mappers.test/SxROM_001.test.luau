--!nolint UnknownGlobal
--!nocheck

local inst_root = script.Parent.Parent.Parent.Parent.Shared
local MMC1 = require(inst_root.API.Mappers.SxROM_001)

local RU8 = buffer.readu8


return function()
    local function _newState(): MMC1.State
        return {
            Control = 0b01100,
            ChrBank0 = 0x00,
            ChrBank1 = 0x00,
            PrgBank = 0x00,
            Shift = 0x10,
            Ram = {PrgRam = nil, ChrRam = nil}
        }
    end

    local state = _newState()

    beforeEach(function()
        state = _newState()
    end)

    it("Resets as expected manually", function()
        MMC1.CpuWrite(0x8000, 0x0F, state)
        expect(state.Shift).to.equal(0b11000)
        MMC1.CpuWrite(0x8000, 0xFF, state)
        expect(state.Shift).to.equal(0b10000)
    end)

    it("Resets as expected after 5 writes", function()
        MMC1.CpuWrite(0x8000, 0x0F, state)
        MMC1.CpuWrite(0x8000, 0x0F, state)
        MMC1.CpuWrite(0x8000, 0x0F, state)
        MMC1.CpuWrite(0x8000, 0x0F, state)
        expect(state.Shift).to.equal(0b11111)
        MMC1.CpuWrite(0x8000, 0x0F, state)
        expect(state.Shift).to.equal(0b10000)
    end)

    it("Switches first prg bank as expected", function()
        MMC1.CpuWrite(0xE000, 0x00, state)
        MMC1.CpuWrite(0xE000, 0x01, state)
        MMC1.CpuWrite(0xE000, 0x00, state)
        MMC1.CpuWrite(0xE000, 0x01, state)
        MMC1.CpuWrite(0xE000, 0x00, state)
        expect(state.PrgBank).to.equal(0b01010)

        MMC1.CpuWrite(0xE000, 0x01, state)
        MMC1.CpuWrite(0xE000, 0x01, state)
        MMC1.CpuWrite(0xE000, 0x00, state)
        MMC1.CpuWrite(0xE000, 0x01, state)
        MMC1.CpuWrite(0xE000, 0x01, state)
        expect(state.PrgBank).to.equal(0b11011)
    end)
end