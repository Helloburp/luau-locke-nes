--!nolint UnknownGlobal
--!nocheck

local modules = {
    Arithmetic = require(script.Arithmetic),
    Logic = require(script.Logic),
    Branch = require(script.Branch)
}

local _newCommon = require(script.Parent._COMMON)

return function()
    beforeEach(function()
        _newCommon(expect).Reset()
    end)

    describe("Arithmetic", modules.Arithmetic)
    describe("Logic", modules.Logic)
    describe("Branch", modules.Branch)
end