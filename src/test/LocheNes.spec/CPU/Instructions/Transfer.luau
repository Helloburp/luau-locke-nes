--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    describe("LDA", c.UnimplementedTest)
    describe("LDX", c.UnimplementedTest)
    describe("LDY", c.UnimplementedTest)
    describe("STA", c.UnimplementedTest)
    describe("STX", c.UnimplementedTest)
    describe("STY", c.UnimplementedTest)
    describe("TAX", c.UnimplementedTest)
    describe("TAY", c.UnimplementedTest)
    describe("TSX", c.UnimplementedTest)
    describe("TXA", c.UnimplementedTest)
    describe("TXS", c.UnimplementedTest)
    describe("TYA", c.UnimplementedTest)
end