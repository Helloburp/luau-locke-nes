--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    describe("DEC", c.UnimplementedTest)
    describe("DEX", c.UnimplementedTest)
    describe("DEY", c.UnimplementedTest)
    describe("INC", c.UnimplementedTest)
    describe("INX", c.UnimplementedTest)
    describe("INY", c.UnimplementedTest)
end