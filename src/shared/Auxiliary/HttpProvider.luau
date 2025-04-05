local HttpService = game:GetService("HttpService")

local m = {}


function m.OnServerInvoke(plr: Player, url: string): (boolean, string)
    local s, result = pcall(function() return HttpService:GetAsync(url) end)
    if not s then
        return false, result
	elseif typeof(result == "string") then
		local encoded = HttpService:JSONEncode({Rom = buffer.fromstring(result)})
		return true, encoded
    else
        return false, "Link must contain raw data."
    end
end


return m