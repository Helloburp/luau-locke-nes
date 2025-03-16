
local inst_root = script.Parent.Parent.Parent
local inst_core, inst_api = inst_root.Core, inst_root.API

local T_RAMSTATE = require(inst_api["RamState.types"])
type RamState = T_RAMSTATE.RamState


local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8


export type EBankSelect = "RegisterSelect" | "PrgRomMode" | "ChrBankInversion"


export type State = {
    Ram: RamState,

    -- Mapping
    BankSelect: u8,
    ChrBank0_2KB: u8,   -- R0
    ChrBank1_2KB: u8,
    ChrBank2_1KB: u8,
    ChrBank3_1KB: u8,
    ChrBank4_1KB: u8,
    ChrBank5_1KB: u8,
    PrgBank0_8KB: u8,   -- R6
    PrgBank1_8KB: u8,

    MirroringIsHorizontal: boolean,
    PrgRamProtect: u8,
    IrqLatch: u8,
    IrqReload: u8,
    IrqEnabled: boolean,
}

return {}