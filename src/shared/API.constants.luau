
local T = require(script.Parent["API.types"])
type MapperFromRom<State> = T.MapperFromRom<State>

local inst_mappers = script.Parent.API.Mappers


local MAPPERS_BY_ID: {[number]: MapperFromRom<any>} = {
    [000] = require(inst_mappers.NROM_000).MapperInterface
}


return {
    MAPPERS_BY_ID = MAPPERS_BY_ID
}