--!nolint UnknownGlobal
--!nocheck

local modules = {
    SxROM_001 = require(script["SxROM_001.test"])
}

return function()
    describe("SxROM_001", modules.SxROM_001)
end