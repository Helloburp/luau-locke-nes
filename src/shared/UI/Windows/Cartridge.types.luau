local inst_ui = script.Parent.Parent

local T_EMUCONTEXT = require(inst_ui["EmulationContext.types"])
type EmulationContext<MapperState> = T_EMUCONTEXT.EmulationContext<MapperState>


export type MapperRenderFunction<T> = (EmulationContext<T>) -> ()

return {}