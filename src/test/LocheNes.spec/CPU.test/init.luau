--!nolint UnknownGlobal
--!nocheck


local modules = {
    Instructions = require(script["Instructions.test"]),
    AddressingModes = require(script["AddressingModes.test"]),
    NesTest = require(script["Nestest.test"])
}

return function()
    describe("Instructions", modules.Instructions)
    describe("AddressingModes", modules.AddressingModes)
    describe("Nestest", modules.NesTest)
end