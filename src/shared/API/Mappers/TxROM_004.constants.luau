local inst_core = script.Parent.Parent.Parent.Core

local h = require(inst_core.Helpers)
local T_H = require(inst_core["Helpers.types"])
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>


local T = require(script.Parent["TxROM_004.types"])
type EBankSelect = T.EBankSelect

local BANK_SELECT_MASKS: {[EBankSelect]: number} = {
    ["RegisterSelect"]      = 0b00000111,
    ["PrgRomMode"]          = 0b01000000,
    ["ChrBankInversion"]    = 0b10000000,
}

local REG_SELECT = {
    ChrBank0_2KB = 0,   -- R0
    ChrBank1_2KB = 1,
    ChrBank2_1KB = 2,
    ChrBank3_1KB = 3,
    ChrBank4_1KB = 4,
    ChrBank5_1KB = 5,
    PrgBank0_8KB = 6,   -- R6
    PrgBank1_8KB = 7,
}

local PRG_ROM_MODE = {
    HighBankSwappable = 0,
    LowBankSwappable = 1
}

local CHR_MEM_MODE = {
    LowBanks2KB_HighBanks1KB = 0,
    LowBanks1KB_HighBanks2KB = 1
}

return {
    BankSelect = h.NewBitfieldFunctions(BANK_SELECT_MASKS) :: T_H.BitfieldFunctions<EBankSelect>,
    REG_SELECT = REG_SELECT,
    PRG_ROM_MODE = PRG_ROM_MODE,
    CHR_MEM_MODE = CHR_MEM_MODE
}