--!nolint UnknownGlobal
--!nocheck


local modules = {
    Instructions = require(script["Instructions.test"]),
    AddressingModes = require(script["AddressingModes.test"]),
    NesTest = require(script["Nestest.test"])
}

local m = require(script.Parent.Parent.Parent.Shared.CPU)

return function()
    describe("Instructions", modules.Instructions)
    describe("AddressingModes", modules.AddressingModes)
    describe("Nestest", modules.NesTest)
end