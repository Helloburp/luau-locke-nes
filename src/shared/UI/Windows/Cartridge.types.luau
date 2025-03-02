local inst_root = script.Parent.Parent.Parent

local T_UI = require(inst_root["UI.types"])
type EmulationContext<MapperState> = T_UI.EmulationContext<MapperState>


export type MapperRenderFunction<T> = (EmulationContext<T>) -> ()

return {}