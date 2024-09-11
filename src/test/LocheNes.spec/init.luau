--!nolint UnknownGlobal
--!nocheck


local modules = {
    CPU = require(script.CPU),
    Helpers = require(script.Helpers),
}

return function()
    describe("LocheNes", function()
        describe("CPU", modules.CPU)
        describe("Helpers", modules.Helpers)
    end)
end