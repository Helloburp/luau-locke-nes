local T_NES = require(script.Parent.Nes["NES.types"])
type IMapper<State> = T_NES.IMapper<State>

export type MapperFromRom<State> = (rom: buffer) -> IMapper<State>


return {}