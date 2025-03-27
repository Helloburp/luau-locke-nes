local inst_root = script.Parent.Parent
local inst_core = inst_root.Core

local T = require(inst_core["Helpers.types"])
type u8 = T.u8
type u16 = T.u16
type Mem = T.Bus
type TableBuffer = T.TableBuffer


export type Header = {
    PrgRom16kBankCount: u8,
    ChrMemory: {
        _t: "Rom",
        ChrRom8kBankCount: u8,
    } | {_t: "Ram"},

    NametableArrangement: "Vertical" | "Horizontal" | "Alternative",
    HasPersistentMemory: boolean,
    HasTrainer: boolean,

    TVSystem: "NTSC" | "PAL" | "Dual",
    MapperId: u8,
}

export type RomInterface = {
    PrgMem: Mem,
    ChrMem: Mem,
    TableBuffer: TableBuffer,
    PrgBank0: number,
    ChrBank0: number
}

export type Rom = {
    Interface: RomInterface,
    Header: Header
}

return {}