local T = require(script.Parent["Helpers.types"])
type u8 = T.u8

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

return {}