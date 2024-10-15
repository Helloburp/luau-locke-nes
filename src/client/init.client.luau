--!optimize 2
local root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local Parse = require(root.Parse)
local UI = require(script.UI)

local ROM_NAME = "IceClimber.nes"

local rom, header do
    local romModule = game.ReplicatedStorage.Roms:FindFirstChild(ROM_NAME, true)
    assert(romModule, `Unable to find rom "{ROM_NAME}!"`)
    local romStr = require(romModule)
    rom = Parse.HexStrToBuffer(romStr)
    header = Parse.Header(rom)
end

local myCartridge = require(root.Mappers.NROM_000).NewFromRom(rom, header)
local myUi = UI.NewIrisHook(myCartridge)

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

-- Debugging
do
    local _myNes = myUi.Nes
    myUi.WindowStates.Screen:set(true)
    myUi.WindowStates.Execution:set(true)
    -- myUi.Renderers.Nametables[0].State:set(true)
    -- myUi.Renderers.PatternTables[0].State:set(true)

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