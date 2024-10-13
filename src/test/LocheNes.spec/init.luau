--!nolint UnknownGlobal
--!nocheck


local modules = {
    Nes = require(script["NES.test"]),
    CPU = require(script["CPU.test"]),
    Helpers = require(script["Helpers.test"]),
    Parse = require(script["Parse.test"]),
    Log = require(script["Log.test"]),
}

return function()
    describe("LocheNes", function()
        describe("NES", modules.Nes)
        describe("CPU", modules.CPU)
        describe("Helpers", modules.Helpers)
        describe("Parse", modules.Parse)
        describe("Log", modules.Log)
    end)
end