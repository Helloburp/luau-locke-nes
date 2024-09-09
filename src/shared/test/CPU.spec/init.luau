--!nolint UnknownGlobal
--!nocheck

local instructions = require(script.Instructions)

return function()
    describe("CPU", function()
        describe("Instructions", instructions)
    end)
end