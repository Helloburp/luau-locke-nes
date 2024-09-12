--!nolint UnknownGlobal
--!nocheck

local modules = {
    Transfer = require(script.Transfer),
    Stack = require(script.Stack),
    Increments = require(script.Increments),
    Arithmetic = require(script.Arithmetic),
    Logic = require(script.Logic),
    ShiftAndRotate = require(script.ShiftAndRotate),
    Flag = require(script.Flag),
    Comparisons = require(script.Comparisons),
    Branch = require(script.Branch),
    JumpsAndSubroutines = require(script.JumpsAndSubroutines),
    Interrupts = require(script.Interrupts),
    Other = require(script.Other)
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