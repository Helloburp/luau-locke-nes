local inst_root = script.Parent.Parent.Parent
local inst_core, inst_api = inst_root.Core, inst_root.API

local T_RAMSTATE = require(inst_api["RamState.types"])
type RamState = T_RAMSTATE.RamState


local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8


export type EControl = "NametableArrangement" | "PrgRomMode" | "ChrRomMode"

export type State = {
    Ram: RamState,
    Control: u8,
    ChrBank0: u8,
    ChrBank1: u8,
    PrgBank: u8,
    Shift: u8
}

return {}