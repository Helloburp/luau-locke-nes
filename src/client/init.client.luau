local root = game.ReplicatedStorage.Shared
local Iris = require(game.ReplicatedStorage.Packages.Iris).Init()

local Nes = require(root.NES)
local Parse = require(root.Parse)
local Display = require(root.Display)
local C_DISPLAY = require(root["Display.constants"])

local SIZES = C_DISPLAY.RESOLUTIONS

local screenView = Instance.new("EditableImage")
screenView.Size = SIZES.SCREEN

local screenBuffer = Display.NewDisplayBuffer(SIZES.SCREEN)

function _onFrameComplete()
end

local _setPixelColorForCycle = Display.NewPlacePixelInFrame(screenBuffer)


local rom, header do
    local nestest = require(
        game.ReplicatedStorage.Test["LocheNes.spec"]["nestest.nes"]
    )
    rom = Parse.HexStrToBuffer(nestest)
    header = Parse.Header(rom)
end

local myCartridge = require(root.Mappers.NROM_000).NewFromRom(rom, header)

local myNes = Nes.New(
    _onFrameComplete, _setPixelColorForCycle, myCartridge
)

local patternView = Instance.new("EditableImage")
patternView.Size = SIZES.PATTERN_TABLE

local patternBuffer = Display.NewDisplayBuffer(SIZES.PATTERN_TABLE)

game:GetService("RunService").Heartbeat:Connect(function()
    for x = 1, 500 do
        Nes.Clock(myNes)
    end
    Display.DrawPatternTableToBuffer(
        myNes.PpuBus, patternBuffer, false, math.floor(tick())%8
    )
    patternView:WritePixelsBuffer(Vector2.new(), SIZES.PATTERN_TABLE, patternBuffer)
    screenView:WritePixelsBuffer(Vector2.new(), SIZES.SCREEN, screenBuffer)
end)

Iris:Connect(function()
    do
        Iris.Window("Pattern Memory", {size = SIZES.PATTERN_TABLE})
        local image = Iris.Image{
            "rbxassetid://0", UDim2.new(0, 256, 0, 256)
        }.Instance :: ImageLabel

        patternView.Parent = image
        image.ResampleMode = Enum.ResamplerMode.Pixelated
        Iris.End()
    end
    do
        Iris.Window("Screen", {size = SIZES.SCREEN})
        local image = Iris.Image{
            "rbxassetid://0", UDim2.new(0, SIZES.SCREEN.X, 0, SIZES.SCREEN.Y)
        }.Instance :: ImageLabel

        screenView.Parent = image
        image.ResampleMode = Enum.ResamplerMode.Pixelated
        Iris.End()
    end


end)