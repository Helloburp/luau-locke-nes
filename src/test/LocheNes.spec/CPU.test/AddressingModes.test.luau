--!nolint UnknownGlobal
--!nocheck

local _newCommon = require(script.Parent._COMMON)
local inst_root = script.Parent.Parent.Parent.Parent.Shared
local inst_components = inst_root.Components
local m = require(inst_components.CPU.AddressingModes)
local T = require(inst_components["CPU.types"])

return function()
    local c = _newCommon(expect)
    beforeEach(function() c.Reset() end)

    local function _test(
        _mode: T.GenericAddressingMode,
        arg: T.u16?,
        expectedAddr: T.u16?,
        expectedOopsCycle: boolean,
        state: {X: number?, Y: number?, PC: number?}?,
        memState: {[T.u16]: T.u8?}?
    )
        for addr, val in pairs(memState or {}) do
            c.Mem().Write(addr, val)
        end
        c.Regs().X = state and (state.X or 0) or 0
        c.Regs().Y = state and (state.Y or 0) or 0
        c.Regs().PC = state and (state.PC or 0) or 0
        local addr, oopsCycle = _mode(c.Regs(), arg, c.Mem())
        expect(addr).to.equal(expectedAddr)
        expect(oopsCycle or false).to.equal(expectedOopsCycle)
    end

    describe("ZPX", function()
        it("Address Computation", function()
            _test(m.ZPX, 0x05, 0x0005, false)
            _test(m.ZPX, 0xFF, 0x00FF, false)
            _test(m.ZPX, 0xFF, 0x0000, false, {X = 0x01})
            _test(m.ZPX, 0x08, 0x00F8, false, {X = 0xF0})
        end)
    end)

    describe("ZPY", function()
        it("Address Computation", function()
            _test(m.ZPY, 0x05, 0x0005, false)
            _test(m.ZPY, 0xFF, 0x00FF, false)
            _test(m.ZPY, 0xFF, 0x0000, false, {Y = 0x01})
            _test(m.ZPY, 0x08, 0x00F8, false, {Y = 0xF0})
        end)
    end)

    describe("ABS", function()
        it("Address Computation", function()
            _test(m.ABS, 0x0500, 0x0500, false)
            _test(m.ABS, 0xFFFF, 0xFFFF, false)
            _test(m.ABS, 0x0800, 0x0800, false, {X = 0xF0})
        end)
        it("Oops Cycle", function()
            _test(m.ABS, 0xFFFF, 0xFFFF, false, {X = 0x01})
        end)
    end)

    describe("ABX", function()
        it("Address Computation", function()
            _test(m.ABX, 0x0500, 0x0500, false)
            _test(m.ABX, 0xFFFF, 0xFFFF, false)
            _test(m.ABX, 0x0800, 0x08F0, false, {X = 0xF0})
        end)
        it("Oops Cycle", function()
            _test(m.ABX, 0xFFFF, 0x0000, true, {X = 0x01})
        end)
    end)


    describe("ABY", function()
        it("Address Computation", function()
            _test(m.ABY, 0x0500, 0x0500, false)
            _test(m.ABY, 0xFFFF, 0xFFFF, false)
            _test(m.ABY, 0x0800, 0x08F0, false, {Y = 0xF0})
        end)
        it("Oops Cycle", function()
            _test(m.ABY, 0xFFFF, 0x0000, true, {Y = 0x01})
        end)
    end)

    describe("IZX", function()
        it("Address Computation", function()
            _test(
                m.IZX, 0x00, 0xF1FF, false, nil,
                { [0x0000] = 0xFF, [0x0001] = 0xF1, }
            )
            _test(
                m.IZX, 0xFF, 0xF1FF, false, nil,
                { [0xFF] = 0xFF, [0x0000] = 0xF1, }
            )
            _test(
                m.IZX, 0x00, 0xF1FF, false, {X = 0x04},
                { [0x04] = 0xFF, [0x05] = 0xF1, }
            )
        end)
        it("Does not accept addresses outside of zero page", function()
            _test(
                m.IZX, 0xFFFF, 0xF100, false, nil,
                { [0xFFFF] = 0xFF, [0x000] = 0xF1, }
            )
        end)
    end)

    describe("IZY", function()
        it("Address Computation", function()
            _test(
                m.IZY, 0x00, 0xEEFF, false, nil,
                { [0x0000] = 0xFF, [0x0001] = 0xEE }
            )
            _test(
                m.IZY, 0x05, 0x05F6, false, {Y = 5},
                { [0x0005] = 0xF1, [0x0006] = 0x05}
            )
        end)
        it("Does not accept addresses outside of zero page", function()
            _test(
                m.IZY, 0x00FF, 0x0115, false, {Y = 0x04},
                { [0x00FF] = 0x11, [0x0100] = 0xFE, [0x0000] = 0x01}
            )
        end)
        it("Oops Cycle", function()
            _test(
                m.IZY, 0xFF, 0xFF03, true, {Y = 0x04},
                { [0x00FF] = 0xFF, [0x0000] = 0xFE }
            )
        end)
    end)

    describe("IMP", function()
        it("Address Computation", function()
            _test(m.IMP, nil, nil, false)
            _test(m.IMP, 0, nil, false)
            _test(m.IMP, 0xFFFF, nil, false)
        end)
    end)

    describe("ACC", function()
        it("Address Computation", function()
            _test(m.ACC, nil, nil, false)
            _test(m.ACC, 0, nil, false)
            _test(m.ACC, 0xFFFF, nil, false)
        end)
    end)

    describe("IMM", function()
        it("Address Computation", function()
            _test(m.IMM, nil, 0xFFFE, false, {PC = 0xFFFF})
            _test(m.IMM, nil, 0xFFFF, false)
        end)
    end)

    describe("IND", function()
        it("Address Computation", function()
            _test(
                m.IND, 0xEEEE, 0xFE11, false, {Y = 0x04},
                { [0xEEEE] = 0x11, [0xEEEF] = 0xFE, [0x0000] = 0x01}
            )
        end)
        it("Wraps the current page for the MSB", function()
            _test(
                m.IND, 0x02FF, 0x0300, false, nil,
                { [0x02FF] = 0x00, [0x200] = 0x03, [0x0300] = 0xAA}
            )
        end)
    end)

end