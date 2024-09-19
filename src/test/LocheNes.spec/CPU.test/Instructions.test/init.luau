--!nolint UnknownGlobal
--!nocheck

local modules = {
    Transfer = require(script["Transfer.test"]),
    Stack = require(script["Stack.test"]),
    Increments = require(script["Increments.test"]),
    Arithmetic = require(script["Arithmetic.test"]),
    Logic = require(script["Logic.test"]),
    ShiftAndRotate = require(script["ShiftAndRotate.test"]),
    Flag = require(script["Flag.test"]),
    Comparisons = require(script["Comparisons.test"]),
    Branch = require(script["Branch.test"]),
    JumpsAndSubroutines = require(script["JumpsAndSubroutines.test"]),
    Interrupts = require(script["Interrupts.test"]),
    Other = require(script["Other.test"])
}

local _newCommon = require(script.Parent._COMMON)

return function()
    beforeEach(function()
        _newCommon(expect).Reset()
    end)

    describe("Transfer", modules.Transfer)
    describe("Stack", modules.Stack)
    describe("Increments", modules.Increments)
    describe("Arithmetic", modules.Arithmetic)
    describe("Logic", modules.Logic)
    describe("ShiftAndRotate", modules.ShiftAndRotate)
    describe("Flag", modules.Flag)
    describe("Comparisons", modules.Comparisons)
    describe("Branch", modules.Branch)
    describe("JumpsAndSubroutines", modules.JumpsAndSubroutines)
    describe("Interrupts", modules.Interrupts)
    describe("Other", modules.Other)
end