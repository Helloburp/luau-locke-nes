--!optimize 2
local T_H = require(script.Parent["Helpers.types"])

local C = require(script.Parent["Display.constants"])

local h = require(script.Parent.Helpers)

local Ppu = require(script.Parent.PPU)
local C_PPU = require(script.Parent["PPU.constants"])
local VRamAddress = C_PPU.BITFIELD_UTIL.VRamAddress


local m = {}

type u8 = T_H.u8
type Bus = T_H.Bus

local RSHIFT, BAND = bit32.rshift, bit32.band


function m.NewPlacePixelInFrame(_setColor: (i: number, color: u8) -> ())
    return function(ppuCyclesInFrame: number, color: u8)
        local dot, scanline =
            Ppu.GetDotInFrame(ppuCyclesInFrame),
            Ppu.GetScanlineInFrame(ppuCyclesInFrame)

        if not (dot < 256 and scanline < 240) then return end
        _setColor(dot + scanline*256, color)
    end
end


function m.NewDisplayBuffer(imageSize: Vector2): buffer
    return buffer.create(imageSize.X * imageSize.Y * 4)
end


function m.NewWriteColorValueToBuffer(b: buffer): (i: number, color: u8) -> ()
    return function(i: number, color: u8)
        buffer.writeu32(b, i*4, C.COLORS_U32[color] or C.COLORS_U32[0x28])
    end
end


function m.NewWriteColorValueToDisplayTable(t: {})
    return function(i: number, color: u8)
        local colorTable = C.COLORS[color]
        t[i*4 + 1] = colorTable.r/255
        t[i*4 + 2] = colorTable.g/255
        t[i*4 + 3] = colorTable.b/255
        t[i*4 + 4] = 1
    end
end


function m.RefreshNametable(
    b: buffer, image: EditableImage, ppuBus: Bus,
    nametable: number, rightPatternTable: boolean
)
    m.DrawNametable(
        ppuBus, nametable, rightPatternTable, m.NewWriteColorValueToBuffer(b)
    )
    m.WriteBufferToImage(b, image)
end


function m.RefreshPatternTable(
    b: buffer, image: EditableImage, ppuBus: Bus, right: boolean
)
    m.DrawPatternTable(
        ppuBus, right, 0, m.NewWriteColorValueToBuffer(b)
    )
    m.WriteBufferToImage(b, image)
end


function m.RefreshPalette(b: buffer, image: EditableImage, ppuBus: Bus)
    m.DrawPalettes(ppuBus, m.NewWriteColorValueToBuffer(b))
    m.WriteBufferToImage(b, image)
end


function m.DrawNametable(
    ppuBus: Bus, nametable: number, rightPatternTable: boolean,
    _setPixelColor: (i: number, color: u8) -> ()
)
    for tileY = 0, 29 do
        for fineY = 0, 7 do
            for tileX = 0, 31 do
                local addr = VRamAddress.Compose{
                    ["N"] = nametable,
                    ["X"] = tileX,
                    ["Y"] = tileY,
                }
                local tile, attr =
                    ppuBus.Read(
                        Ppu.GetTileAddressFromVRamAddress(addr)
                    ),
                    ppuBus.Read(
                        Ppu.GetAttributeAddressFromVRamAddress(addr)
                    )
                
                local attrOffset =
                    Ppu.GetOffsetInAttributeByteFromVRamAddress(addr)
                
                local palette =
                    (if h.GetBit(attrOffset, attr) then 1 else 0) +
                    (if h.GetBit(attrOffset + 1, attr) then 2 else 0)

                local lo, hi = _getLowAndHighPatternValues(
                    ppuBus, rightPatternTable, tile, fineY
                )

                m.RenderTileStrip(
                    ppuBus, lo, hi, palette, false,
                    function(fineX: number, color: u8)
                        _setPixelColor(
                            tileY*8*32*8 + fineY*32*8 + tileX*8 + fineX,
                            color
                        )
                    end
                )
            end
        end
    end
end


function m.RenderTileStrip(
    ppuBus: Bus, patternLo: u8, patternHi: u8,
    attr: number, isSprite: boolean,
    _setFineXColor: (fineX: number, color: u8) -> ()
)
    for fineX = 0, 7 do
        local patternValue = Ppu.GetPatternValueFromBitPlanes(
            patternLo, patternHi, fineX
        )
        local pixel = Ppu.GetPixelValue(
            patternValue, attr, isSprite
        )

        local color = Ppu.GetColorByPixelValue(pixel, ppuBus)

        _setFineXColor(7 - fineX, color)
    end
end


function m.DrawPalettes(
    ppuBus: Bus, _setPixelColor: (i: number, color: u8) -> ()
)
    for offset = 0x00, 0x1F do
        _setPixelColor(offset, ppuBus.Read(0x3F00 + offset))
    end
end


function m.DrawPatternTable(
    ppuBus: Bus, right: boolean, palette: number,
    _setPixelColor: (i: number, color: u8) -> ()
)
    local attributeValue, isSprite = BAND(palette, 0x3), RSHIFT(palette, 2) == 1

    for tileY = 0, 15 do
        for fineY = 0, 7 do
            for tileX = 0, 15 do
                local lo, hi = _getLowAndHighPatternValues(
                    ppuBus, right, tileY * 16 + tileX, fineY
                )
                m.RenderTileStrip(
                    ppuBus, lo, hi, attributeValue, isSprite,
                    function(fineX: number, color: u8)
                        _setPixelColor(
                            tileY*8*16*8 + fineY*16*8 + tileX*8 + fineX,
                            color
                        )
                    end
                )
            end
        end
    end
end


function m.NewBufferImagePair(size: Vector2): (buffer, EditableImage)
    local b = m.NewDisplayBuffer(size)
    local editableImage = Instance.new("EditableImage")
    editableImage.Size = size

    return b, editableImage
end


function m.WriteBufferToImage(b: buffer, image: EditableImage)
    image:WritePixelsBuffer(Vector2.new(), image.Size, b)
end

function _getLowAndHighPatternValues(
    ppuBus: Bus, right: boolean, tileNumber: number, fineY: number
)
    return ppuBus.Read(
            Ppu.GetLowPatternTableAddress(right, tileNumber, fineY)
        ),
        ppuBus.Read(
            Ppu.GetHighPatternTableAddress(right, tileNumber, fineY)
        )
end

return m