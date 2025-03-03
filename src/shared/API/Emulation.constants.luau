
local T = require(script.Parent["Emulation.types"])
type IMapperFromRom<State> = T.IMapperFromRom<State>

local inst_mappers = script.Parent.Mappers

local MAPPERS_BY_ID: {[number]: IMapperFromRom<any>} = {
    [000] = require(inst_mappers.NROM_000).MapperInterface,
    [001] = require(inst_mappers.SxROM_001).MapperInterface,
    [002] = require(inst_mappers.UxROM_002).MapperInterface,
}


return {
    MAPPERS_BY_ID = MAPPERS_BY_ID
}