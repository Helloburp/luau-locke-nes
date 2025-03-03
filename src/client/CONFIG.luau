local CONFIGURATIONS = {
    M1_TEST_ROM = {
        ROM_NAME = "M1_P128K_C128K_W8K.nes",
    },

    METROID = {
        ROM_NAME = "metroid.nes",
        SAVESTATE_NAME = nil,
        DEBUG_CONFIG = {
            -- BreakIfCpuWrite = function(addr)
            --     return addr >= 0x8000
            -- end,
        }
    },

    MM2 = {
        ROM_NAME = "mm2.nes",
        SAVESTATE_NAME = "mm2_wood",
    },

    SMB2 = {
        ROM_NAME = "smb2.nes",
        SAVESTATE_NAME = nil
    },

    ZELDA = {
        ROM_NAME = "zelda.nes",
        SAVESTATE_NAME = nil
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
    },

    CASTLEVANIA = {
        ROM_NAME = "castlevania.nes"
    }
}

return CONFIGURATIONS.CASTLEVANIA