--!nolint UnknownGlobal
--!nocheck


local modules = {
    CPU = require(script.CPU),
    Helpers = require(script.Helpers),
    Parse = require(script.Parse),
}

return function()
    describe("LocheNes", function()
        describe("CPU", modules.CPU)
        describe("Helpers", modules.Helpers)
        describe("Parse", modules.Parse)
    end)
end