--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)


return function()
    local c = _newCommon(expect)

    describe("CLC", c.UnimplementedTest)
    describe("CLD", c.UnimplementedTest)
    describe("CLI", c.UnimplementedTest)
    describe("CLV", c.UnimplementedTest)
    describe("SEC", c.UnimplementedTest)
    describe("SED", c.UnimplementedTest)
    describe("SEI", c.UnimplementedTest)
end