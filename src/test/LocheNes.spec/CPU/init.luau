--!nolint UnknownGlobal
--!nocheck


local modules = {
    Instructions = require(script.Instructions),
    AddressingModes = require(script.AddressingModes),
}

return function()
    describe("CPU", function()
        describe("Instructions", modules.Instructions)
        describe("AddressingModes", modules.AddressingModes)
    end)
end