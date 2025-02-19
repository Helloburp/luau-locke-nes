
local m = {}

local LSHIFT = bit32.lshift
local WU8 = buffer.writeu8


function m.HexStrToBuffer(str: string): buffer
    local values = {}
    for hiNibble, loNibble in _hexStrBytes(str) do
        local val = LSHIFT(tonumber(hiNibble, 16), 4) + tonumber(loNibble, 16)
        table.insert(values, val)
    end

    local b = buffer.create(#values)
    for i, v in ipairs(values) do
       WU8(b, i - 1, v)
    end

    return b
end


function m.BufferFromModuleParent(parent: Instance)
    return _newBufferFromStrings(
        _getModuleStringsFromParentAlphabetically(parent)
    )
end


function m.BufferFromInstance(inst: Instance)
    if inst:IsA("ModuleScript") then
        local str = require(inst)
        assert(
            typeof(str) == "string",
            `Attempted to require '{inst:GetFullName()}' as a string; did not return a string.`
        )
        return m.HexStrToBuffer(str)
    else
        return m.BufferFromModuleParent(inst)
    end
end


function _hexStrBytes(str: string) return string.gmatch(str, "(%x).-(%x)") end


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
        local b = m.HexStrToBuffer(str)
        totalLen += buffer.len(b)
        table.insert(tempBuffers, b)
    end


    local b = buffer.create(totalLen)
    local offset = 0

    for _, tempBuffer in tempBuffers do
        buffer.copy(b, offset, tempBuffer)
        offset += buffer.len(tempBuffer)
    end

    return b
end


return m