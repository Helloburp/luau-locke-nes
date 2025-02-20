local CONFIGURATIONS = {
    M1_TEST_ROM = {
        ROM_NAME = "M1_P128K_C128K_W8K.nes",
    },

    METROID = {
        ROM_NAME = "metroid.nes",
        SAVESTATE_NAME = nil,
        DEBUG_CONFIG = {
            BreakIfCpuWrite = function(addr)
                return addr >= 0x8000
            end,
        }
    },

    SMB = {
        ROM_NAME = "SMB.nes",
        SAVESTATE_NAME = nil
    },

    DK = {
        ROM_NAME = "DK.nes",
        SAVESTATE_NAME = nil
    },

    ICE_CLIMBER = {
        ROM_NAME = "IceClimber.nes",
        SAVESTATE_NAME = nil
    }
}

return CONFIGURATIONS.METROID