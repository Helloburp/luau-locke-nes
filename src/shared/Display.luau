local T_H = require(script.Parent["Helpers.types"])

local C = require(script.Parent["Display.constants"])

local Ppu = require(script.Parent.PPU)

local m = {}

type u8 = T_H.u8
type Bus = T_H.Bus

local RSHIFT, BAND = bit32.rshift, bit32.band


function m.NewPlacePixelInFrame(b: buffer)
    return function(ppuCyclesInFrame: number, color: u8)
        local dot, scanline =
            Ppu.GetDotInFrame(ppuCyclesInFrame),
            Ppu.GetScanlineInFrame(ppuCyclesInFrame)

        if not (dot < 256 and scanline < 240) then return end
        m.WriteColorValueToDisplayBuffer(
            b, dot + scanline*256, color
        )
    end
end


function m.NewDisplayBuffer(imageSize: Vector2): buffer
    return buffer.create(imageSize.X * imageSize.Y * 4)
end


function m.WriteColorValueToDisplayBuffer(b: buffer, i: number, color: u8)
    buffer.writeu32(b, i*4, C.COLORS_U32[color] or C.COLORS_U32[0x28])
end


function m.WriteColorValueToDisplayTable(t: {}, i: number, color: number)
    local colorTable = C.COLORS[color]
    t[i*4 + 1] = colorTable.r/255
    t[i*4 + 2] = colorTable.g/255
    t[i*4 + 3] = colorTable.b/255
    t[i*4 + 4] = 1
end


function m.DrawPatternTable(
    ppuBus: Bus, right: boolean, palette: number,
    _setPixelColor: (i: number, color: u8) -> ()
)
    local attributeValue, isSprite = BAND(palette, 0x3), RSHIFT(palette, 2) == 1

    for fineY = 0, 7 do
        for tile = 0, 255 do
            local lo, hi =
                ppuBus.Read(Ppu.GetLowPatternTableAddress(right, tile, fineY)),
                ppuBus.Read(Ppu.GetHighPatternTableAddress(right, tile, fineY))
            
            for fineX = 0, 7 do
                local patternValue = Ppu.GetPatternValueFromBitPlanes(
                    lo, hi, fineX
                )
                local pixel = Ppu.GetPixelValue(
                    patternValue, attributeValue, isSprite
                )

                local color = Ppu.GetColorByPixelValue(pixel, ppuBus)

                _setPixelColor(fineY*256*8 + tile*8 + fineX, color)
            end
        end
    end

end


return m