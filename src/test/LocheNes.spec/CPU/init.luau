--!nolint UnknownGlobal
--!nocheck


local modules = {
    Instructions = require(script.Instructions),
    AddressingModes = require(script.AddressingModes),
    NesTest = require(script.Nestest)
}

return function()
    describe("Instructions", modules.Instructions)
    describe("AddressingModes", modules.AddressingModes)
    describe("Nestest", modules.NesTest)
end