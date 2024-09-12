--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)

return function()
    local c = _newCommon(expect)

    describe("PHA", c.UnimplementedTest)
    describe("PHP", c.UnimplementedTest)
    describe("PLA", c.UnimplementedTest)
    describe("PLP", c.UnimplementedTest)
end