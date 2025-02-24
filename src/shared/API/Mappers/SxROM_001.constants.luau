local inst_core = script.Parent.Parent.Parent.Core

local h = require(inst_core.Helpers)
local T_H = require(inst_core["Helpers.types"])
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>


local T = require(script.Parent["SxROM_001.types"])
type EControl = T.EControl

local CONTROL_MASKS: {[EControl]: number} = {
    ["NametableArrangement"]    = 0b00011,
    ["PrgRomMode"]              = 0b01100,
    ["ChrRomMode"]              = 0b10000,
}

local REG_SELECT = {
    Control     = 0b00,
    ChrBank0    = 0b01,
    ChrBank1    = 0b10,
    PrgBank     = 0b11,
}

local MIRROR_SELECT = {
    SingleScreenLow     = 0b00,
    SingleScreenHigh    = 0b01,
    Horizontal          = 0b10,
    Vertical            = 0b11
}


return {
    REG_SELECT = REG_SELECT,
    MIRROR_SELECT = MIRROR_SELECT,
    ControlRegister = h.NewBitfieldFunctions(CONTROL_MASKS) :: BitfieldFunctions<EControl>
}