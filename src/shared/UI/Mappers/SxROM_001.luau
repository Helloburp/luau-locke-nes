local inst_root = script.Parent.Parent.Parent

local inst_api = inst_root.API
local Mapper = require(inst_api.Mappers.SxROM_001)
local C = require(inst_api.Mappers["SxROM_001.constants"])
local ControlRegister = C.ControlRegister

local T_UI = require(inst_root["UI.types"])
type EmulationContext<MapperState> = T_UI.EmulationContext<MapperState>

local T = require(inst_api.Mappers["SxROM_001.types"])
type State = T.State


local Iris = require(game.ReplicatedStorage.Packages.Iris)

local RSHIFT = bit32.rshift

local m = {}


function m.Render(context: EmulationContext<State>)
    local state = context.Emulation.State.Mapper
    local prgBankMode, chrBankMode =
        ControlRegister.Get("PrgRomMode", state.Control),
        ControlRegister.Get("ChrRomMode", state.Control)
    
    local prgBankDescription =
        if prgBankMode < 2 then `32k bank {Mapper.GetBank32KB(state.PrgBank)}`
        elseif prgBankMode == 2 then `Low 16k bank locked at 0; \z
            High 16k bank {Mapper.GetBank16KB(state.PrgBank)}`
        else `Low 16k bank {Mapper.GetBank16KB(state.PrgBank)}; \z
            High 16k bank locked at {context.IO.Rom.Header.PrgRom16kBankCount - 1}`
    
    local chrBankDescription = if chrBankMode == 0
        then `Low 4k bank {state.ChrBank0}; High 4k bank {state.ChrBank1}`
        else `8k bank {RSHIFT(state.ChrBank0, 1)}`

    Iris.Text(
        string.format(
            "%s%s\n%s%s",
            `Prg Bank Mode: {prgBankMode}; `,
            prgBankDescription,
            `Chr Bank Mode: {chrBankMode}; `,
            chrBankDescription
        )
    )
end

return m