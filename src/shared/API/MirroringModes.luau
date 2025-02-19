local inst_core = script.Parent.Parent.Core

local h = require(inst_core.Helpers)
local T = require(inst_core["Helpers.types"])
type u16 = T.u16
type u8 = T.u8

local m = {}


function m.Vertical(addr: u16): u16
    return h.UnmirrorAddress(addr, 0x2000, 0x800)
end


function m.Horizontal(addr: u16)
    if addr < 0x2800 then
        return h.UnmirrorAddress(addr, 0x2000, 0x400)
    else
        return 0x400 + h.UnmirrorAddress(addr, 0x2800, 0x400)
    end
end


function m.SingleScreenLow(addr: u16)
    return h.UnmirrorAddress(addr, 0x2000, 0x400)
end


function m.SingleScreenHigh(addr: u16)
    return 0x400 + h.UnmirrorAddress(addr, 0x2000, 0x400)
end


return m