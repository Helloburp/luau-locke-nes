--!nolint UnknownGlobal
--!nocheck

local modules = {
    Arithmetic = require(script.Arithmetic),
    Logic = require(script.Logic)
}

local _newCommon = require(script._COMMON)

return function()
    beforeEach(function()
        _newCommon(expect).Reset()
    end)

    describe("Arithmetic", modules.Arithmetic)
    describe("Logic", modules.Logic)
end