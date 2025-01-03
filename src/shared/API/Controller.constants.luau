local inst_root = script.Parent.Parent
local h = require(inst_root.Core.Helpers)

local T_H = require(inst_root.Core["Helpers.types"])
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>


local T = require(script.Parent["Controller.types"])
type EInput = T.EInput



local INPUT_ORDER: {[EInput]: number} = {
    ["A"]       = 0b00000001,
    ["B"]       = 0b00000010,
    ["Select"]  = 0b00000100,
    ["Start"]   = 0b00001000,
    ["Up"]      = 0b00010000,
    ["Down"]    = 0b00100000,
    ["Left"]    = 0b01000000,
    ["Right"]   = 0b10000000
}

return {
    InputOrder = h.NewBitfieldFunctions(INPUT_ORDER) :: BitfieldFunctions<EInput>,
}