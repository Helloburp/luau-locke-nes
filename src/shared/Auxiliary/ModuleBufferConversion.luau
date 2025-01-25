local inst_api = script.Parent.Parent.API
local Parse = require(inst_api.Parse)

local m = {}


function _getModuleStringsFromParentAlphabetically(parent: Instance): {string}
    local strs = {}

    local children = parent:GetChildren()
    table.sort(children, function(a, b) return a.Name < b.Name end)

    for _, child in children do
        if not child:IsA("ModuleScript") then continue end
        local str = require(child)
        assert(typeof(str) == "string", `Failed to load strings from {child}`)
        table.insert(strs, str)
    end

    return strs
end


function _newBufferFromStrings(strs: {string}): buffer
    local tempBuffers = {}
    local totalLen = 0

    for _, str in strs do
        local b = Parse.HexStrToBuffer(str)
        totalLen += buffer.len(b)
        table.insert(tempBuffers, b)
    end


    local b = buffer.create(totalLen + 1)
    local offset = 0

    for _, tempBuffer in tempBuffers do
        buffer.copy(b, offset, tempBuffer)
        offset += buffer.len(tempBuffer)
    end

    return b
end


function m.BufferFromModuleParent(parent: Instance)
    return _newBufferFromStrings(
        _getModuleStringsFromParentAlphabetically(parent)
    )
end


return m