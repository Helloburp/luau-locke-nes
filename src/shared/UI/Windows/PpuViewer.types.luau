local inst_ui = script.Parent.Parent
local T = require(inst_ui["Elements.types"])
type IrisControlledRenderBuffer = T.IrisControlledRenderBuffer


export type State = {
    Nametables: {[number]: IrisControlledRenderBuffer},
    PatternTables: {[number]: IrisControlledRenderBuffer},
    Palette: IrisControlledRenderBuffer
}

return {}