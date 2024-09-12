--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent.Parent.Parent.Parent.Shared
local m = require(root.Instructions)
local h = require(root.Helpers)
local _newCommon = require(script.Parent.Parent._COMMON)


return function()
    local c = _newCommon(expect)

    describe("CMP", c.UnimplementedTest)
    describe("CPX", c.UnimplementedTest)
    describe("CPY", c.UnimplementedTest)
end