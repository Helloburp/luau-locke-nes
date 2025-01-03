local inst_root = script.Parent.Parent
local T = require(inst_root.Core["Helpers.types"])
type u8 = T.u8


export type EInput = "A" | "B" | "Select" | "Start" | "Up" | "Down" | "Left" | "Right"


export type State = {
    Port1: u8,
    Port2: u8
}


return {}