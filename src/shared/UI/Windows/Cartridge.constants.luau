local T = require(script.Parent["Cartridge.types"])
type MapperRenderFunction<T> = T.MapperRenderFunction<T>


local inst_mappers = script.Parent.Parent.Mappers

local RENDER_FUNCTIONS_BY_MAPPER_ID: {[number]: MapperRenderFunction<any>} = {
    [001] = require(inst_mappers.SxROM_001).Render
}

return {
    RENDER_FUNCTIONS_BY_MAPPER_ID = RENDER_FUNCTIONS_BY_MAPPER_ID
}