local inst_root = script.Parent.Parent.Parent
local inst_api, inst_ui = inst_root.API, inst_root.UI

local T_PARSE = require(inst_api["Parse.types"])
type Header = T_PARSE.Header

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local T_EMUCONTEXT = require(inst_ui["EmulationContext.types"])
type EmulationContext<MapperState> = T_EMUCONTEXT.EmulationContext<MapperState>


local C = require(script.Parent["Cartridge.constants"])

local m = {}


function _headerInfo(header: Header)
    Iris.Text(
        string.format(
            "%s\n%-15s%-15s",
            `Mapper Id: {string.format("%.3d", header.MapperId)}`,
            `PrgROM: {header.PrgRom16kBankCount*16}k`,
            `{
                if header.ChrMemory._t == "Rom"
                    then `ChrROM: {header.ChrMemory.ChrRom8kBankCount*16}k`
                    else "ChrRAM: 8k"
            }`
        )
    )
end


function m.Render<T>(context: EmulationContext<T>)
    local header = context.IO.Rom.Header
    _headerInfo(header)
    local _renderMapper = C.RENDER_FUNCTIONS_BY_MAPPER_ID[header.MapperId]
    if _renderMapper then
        Iris.Separator()
        _renderMapper(context)
    end
end

return m