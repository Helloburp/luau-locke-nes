--!nolint UnknownGlobal
--!nocheck

local modules = {
    Nestest = require(script["Nestest.test"])
}

return function()
    describe("Nestest", modules.Nestest)
end