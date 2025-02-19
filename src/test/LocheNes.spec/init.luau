--!nolint UnknownGlobal
--!nocheck


local modules = {
    PPU = require(script["PPU.test"]),
    Nes = require(script["NES.test"]),
    CPU = require(script["CPU.test"]),
    Helpers = require(script["Helpers.test"]),
    Parse = require(script["Parse.test"]),
    Log = require(script["Log.test"]),
    StringBufferConversion = require(script["StringBufferConversion.test"]),
}

return function()
    describe("Components", function()
        describe("PPU", modules.PPU)
        describe("NES", modules.Nes)
        describe("CPU", modules.CPU)
    end)
    describe("Libraries", function()
        describe("Helpers", modules.Helpers)
        describe("Parse", modules.Parse)
        describe("Log", modules.Log)
        describe("StringBufferConversion", modules.StringBufferConversion)
    end)
end