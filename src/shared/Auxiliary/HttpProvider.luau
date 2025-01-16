local HttpService = game:GetService("HttpService")

local m = {}


-- Incomplete: Still need to do rom conversion process
function m.OnServerInvoke(plr: Player, url: string)
    return HttpService:GetAsync(url)
end


return m