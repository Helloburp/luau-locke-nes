--!nolint UnknownGlobal
--!nocheck

local _newCommon = require(script.Parent._COMMON)
local root = script.Parent.Parent.Parent.Parent.Shared
local m = require(root.AddressingModes)
local T = require(root._TYPES)

return function()
    local c = _newCommon(expect)
    beforeEach(function() c.Reset() end)

    FOCUS()

    local function _addressingModeTest(
        _mode: T.GenericAddressingMode,
        arg: T.u16?,
        expectedAddr: T.u16?,
        expectedOopsCycle: boolean
    )
        local addr, oopsCycle = _mode(c.Regs(), arg, c.Mem())
        expect(addr).to.equal(expectedAddr)
        expect(oopsCycle or false).to.equal(expectedOopsCycle)
    end

    describe("IMP", function()
        it("Address Computation", function()
            _addressingModeTest(m.IMP, nil, nil, false)
            _addressingModeTest(m.IMP, 0, nil, false)
            _addressingModeTest(m.IMP, 0xFFFF, nil, false)
        end)
    end)
end