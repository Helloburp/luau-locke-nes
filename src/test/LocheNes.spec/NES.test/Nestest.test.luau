--!nolint UnknownGlobal
--!nocheck


local root = script.Parent.Parent.Parent.Parent.Shared
local Nes = require(root.NES)
local NestestUtil = require(script.Parent.Parent.TestUtil.Nestest)

local T_NES = require(root["NES.types"])
type Nes = T_NES.Nes

local T_H = require(root["Helpers.types"])
type Bus = T_H.Bus


return function()
    local nes: Nes

    beforeAll(function()
        nes = Nes.New(
            function() end, function() end,
            NestestUtil.Cartridge()
        )
    end)
    
    it("Maps Prg rom to memory as expected", function()
        expect(nes.CpuBus.Read(0x8000)).to.equal(0x4c)
        expect(nes.CpuBus.Read(0x8001)).to.equal(0xf5)
        expect(nes.CpuBus.Read(0xC000)).to.equal(0x4c)
    end)
end