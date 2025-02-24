local inst_root = script.Parent.Parent.Parent
local inst_api = inst_root.API

local T_PARSE = require(inst_api["Parse.types"])
type Header = T_PARSE.Header

local Iris = require(game.ReplicatedStorage.Packages.Iris)

local m = {}


function _headerInfo(header: Header)
    Iris.Text(
        string.format(
            "%s\n%15s%15s",
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

return m