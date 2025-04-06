local inst_api = script.Parent.Parent.Parent.API

local T_EMUCONTEXT = require(inst_api["EmulationContext.types"])
type EmulationContext<MapperState> = T_EMUCONTEXT.EmulationContext<MapperState>


export type MapperRenderFunction<T> = (EmulationContext<T>) -> ()

return {}