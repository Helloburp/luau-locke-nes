local root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local Parse = require(root.Parse)
local UI = require(script.UI)

local rom, header do
    local nestest = require(
        game.ReplicatedStorage.Test["LocheNes.spec"]["nestest.nes"]
    )
    rom = Parse.HexStrToBuffer(nestest)
    header = Parse.Header(rom)
end

local myCartridge = require(root.Mappers.NROM_000).NewFromRom(rom, header)
local myUi = UI.NewIrisHook(myCartridge)

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

-- Debugging
do
    local _myNes = myUi.Nes

    -- myUi.CpuDebugger.WriteBreakpoints[0x2006] = true
    for addr = 0x3F00, 0x3FFF do
        -- myUi.PpuDebugger.WriteBreakpoints[addr] = true
    end

    -- The drawing routine seems to be getting stuck writing
    -- to PPU address 2002.
    for addr = 0x2000, 0x23BF do
        -- myUi.PpuDebugger.WriteBreakpoints[addr] = true
    end
end

Iris:Connect(myUi.Iris)