--!nolint UnknownGlobal
--!nocheck


local modules = {
    CPU = require(script.CPU),
    Helpers = require(script.Helpers),
    Parse = require(script.Parse),
    Log = require(script.Log),
}

return function()
    describe("LocheNes", function()
        describe("CPU", modules.CPU)
        describe("Helpers", modules.Helpers)
        describe("Parse", modules.Parse)
        describe("Log", modules.Log)
    end)
end