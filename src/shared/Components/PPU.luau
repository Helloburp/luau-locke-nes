--!optimize 2
local C = require(script.Parent["PPU.constants"])

local inst_core = script.Parent.Parent.Core
local h = require(inst_core.Helpers)


local T = require(script.Parent["PPU.types"])
type Regs = T.Registers
type InternalRegs = T.InternalRegisters
type Latches = T.Latches
type Shifters = T.Shifters
type State = T.State
type PPU = T.PPU

local T_H = require(inst_core["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Bus = T_H.Bus
type ExecutionState = T_H.ExecutionState
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>
type Peripheral = T_H.Peripheral


local BFU = C.BITFIELD_UTIL
local VRamAddress, AttributeAddress, PatternTableAddress,
    PpuControl, PpuMask, PpuStatus,
    ObjectTileNumber, ObjectAttribute, OAMGetters =
    BFU.VRamAddress, BFU.AttributeAddress, BFU.PatternTableAddress,
    BFU.PpuControl, BFU.PpuMask, BFU.PpuStatus,
    BFU.ObjectTileNumber, BFU.ObjectAttribute, BFU.OAMGetters


local m = {}

local LSHIFT, RSHIFT, BOR, BAND =
    bit32.lshift, bit32.rshift, bit32.bor, bit32.band
local RU8, WU8, RU32, WU32 = buffer.readu8, buffer.writeu8, buffer.readu32, buffer.writeu32
local _u8, _u16 = h.WrapU8, h.WrapU16

function m.Clock(ppu: PPU, bus: Bus)
    local state = ppu.State
    
    -- Perform skip cycle if at the beginning of an odd frame & BG set
    if state.FrameCounter%2 == 0 and state.ExecutionState.Cycles == 0 and
        PpuMask.GetBit("b", state.Registers.PPUMASK)
    then
        state.ExecutionState.Cycles += 1
    end

    local cycles = state.ExecutionState.Cycles
    local dot, scanline = m.GetDotInFrame(cycles), m.GetScanlineInFrame(cycles)

    -- Perform main arithmetic and return pixel for this cycle
    local pixel = _cycleAndReturnPixel(
        bus, state, dot, scanline
    )
    ppu.SetPixelForCycle(cycles, m.GetColorByPixelValue(pixel, bus))


    -- Perform NMI if applicable
    if dot == 1 and scanline == 241 and PpuControl.GetBit("V", state.Registers.PPUCTRL) then
        ppu.TriggerNmi()
    end

    -- Scanline callback for MMC3 IRQ
    if dot == 260 and scanline < 240 and _isRenderingEnabled(state.Registers.PPUMASK) then
        ppu.OnScanline()
    end


    state.ExecutionState.Cycles = (cycles + 1)%C.CYCLES_PER_FRAME_NOSKIP
    state.ExecutionState.Clock += 1

    if state.ExecutionState.Cycles < cycles then
        ppu.OnFrameComplete()
        state.FrameCounter += 1
    end
end


function m.NewState(): State
    return {
        ExecutionState = {
            Clock = 0, Cycles = 0
        },
        Registers = {
            PPUCTRL = 0x00, PPUMASK = 0x00, PPUSTATUS = 0xA0, PPUDATA = 0x00,
            OAMADDR = 0x00,
        },
        InternalRegisters = {
            v = 0x0000, t = 0x0000,
            x = 0x000,  w = false
        },
        Latches = {
            Nametable = 0x00, AttributeTable = 0x00, 
            PatternTableTileLow = 0x00, PatternTableTileHigh = 0x00
        },
        Shifters = {
            PatternLo = 0x00,   PatternHi = 0x00,
            AttributeLo = 0x00, AttributeHi = 0x00
        },
        OAM = buffer.create(0x100),
        SecondaryOAM = buffer.create(0x40),
        IsSprite0BeingDrawn = false,
        FrameCounter = 0
    }
end


function m.CopyState(state: State): State
    return {
        ExecutionState = table.clone(state.ExecutionState),
        Registers = table.clone(state.Registers),
        InternalRegisters = table.clone(state.InternalRegisters),
        Latches = table.clone(state.Latches),
        Shifters = table.clone(state.Shifters),

        OAM = h.CopyBuffer(state.OAM),
        SecondaryOAM = h.CopyBuffer(state.SecondaryOAM),
        IsSprite0BeingDrawn = state.IsSprite0BeingDrawn,

        FrameCounter = state.FrameCounter
    }
end


function m.PpuCtrlWriteAndReturnNmi(
    regs: Regs, iRegs: InternalRegs, val: u8, scanlineCount: number
): boolean
    local oldNmi, newNmi =
        PpuControl.Get("V", regs.PPUCTRL),
        PpuControl.Get("V", val)
    local inVBlank = _isInVBlank(scanlineCount)
    regs.PPUCTRL = val

    iRegs.t = VRamAddress.Set("N", iRegs.t, BAND(val, 0x03))

    return oldNmi == 0 and newNmi == 1 and inVBlank
end


function m.PpuMaskWrite(regs: Regs, val: u8)
    regs.PPUMASK = val
end


function m.PpuStatusRead(regs: Regs, internalRegs: InternalRegs)
    local oldStatus = regs.PPUSTATUS
    regs.PPUSTATUS = PpuStatus.Set("V", regs.PPUSTATUS, 0)
    internalRegs.w = false
    return oldStatus   -- Todo: Consider making bits 0-4 "open bus"
end


function m.OamAddrWrite(regs: Regs, val: u8)
    regs.OAMADDR  = val
end


function m.OamDataRead(regs: Regs, OAM: buffer)
    return RU8(OAM, regs.OAMADDR)
end


function m.OamDataWrite(
    regs: Regs, val: u8, scanlineCount: number, oam: buffer
)
    if not _isInVBlank(scanlineCount)
        and _isRenderingEnabled(regs.PPUMASK) then
        return
    end
    
    WU8(oam, regs.OAMADDR, val)
    regs.OAMADDR = _u8(regs.OAMADDR, regs.OAMADDR + 1)
end


function m.PpuScrollWrite(iRegs: InternalRegs, val: u8)
    if not iRegs.w then
        iRegs.t = VRamAddress.Set("X", iRegs.t, RSHIFT(val, 3))
        iRegs.x = BAND(val, 0x07)
    else
        iRegs.t = VRamAddress.Set("Y", iRegs.t, RSHIFT(val, 3))
        iRegs.t = VRamAddress.Set("y", iRegs.t, BAND(val, 0x07))
    end

    iRegs.w = not iRegs.w
end


function m.PpuAddrWrite(iRegs: InternalRegs, val: u8)
    if not iRegs.w then
        iRegs.t = BAND(iRegs.t, 0x00FF) + LSHIFT(BAND(val, 0x7F), 8)
    else
        iRegs.t = BAND(iRegs.t, 0xFF00) + val
        iRegs.v = iRegs.t
    end

    iRegs.w = not iRegs.w
end


function m.PpuDataRead(bus: Bus, regs: Regs, iRegs: InternalRegs)
    local oldRead = regs.PPUDATA
    local oldAddr = iRegs.v
    regs.PPUDATA = bus.Read(iRegs.v)

    _incrementVRamAddressAfterCpuAccess(regs, iRegs)

    -- Palette ram on later PPUs returned instantly
    if oldAddr >= 0x3F00 and oldAddr <= 0x3FFF then
        return regs.PPUDATA
    end

    return oldRead
end


function m.PpuDataWrite(bus: Bus, regs: Regs, iRegs: InternalRegs, val: u8)
    bus.Write(iRegs.v, val)
    _incrementVRamAddressAfterCpuAccess(regs, iRegs)
end


function m.NewOAM()
    return buffer.create(0x40)
end


function m.New(
    _nmi: () -> (),
    _onFrameComplete: () -> (),
    _onScanline: () -> (),
    _setPixelColorForCycle: (i: number, color: u8) -> (),
    state: State?
): PPU
    return {
        State = state or m.NewState(),

        TriggerNmi = _nmi,
        OnFrameComplete = _onFrameComplete,
        OnScanline = _onScanline,
        SetPixelForCycle = _setPixelColorForCycle
    }
end


function m.GetDotInFrame(cyclesThisFrame: number)
    return cyclesThisFrame%C.DOTS_PER_SCANLINE
end


function m.GetScanlineInFrame(cyclesThisFrame: number)
    return (cyclesThisFrame - cyclesThisFrame%C.DOTS_PER_SCANLINE)
        / C.DOTS_PER_SCANLINE
end


function m.GetPixelValue(
    patternValue: number, attributeValue: number, isSprite: boolean
): u8
    return (
        patternValue +
        LSHIFT(attributeValue, 2) + 
        LSHIFT(if isSprite then 1 else 0, 4)
    )
end


-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function m.GetTileAddressFromVRamAddress(v: u16)
    return 0x2000 + VRamAddress.Set("y", v, 0)
end


function m.GetAttributeAddressFromVRamAddress(v: u16)
    local attrAddr = AttributeAddress.Compose{
        ["N"] = VRamAddress.Get("N", v),
        ["AttributeOffset"] = 0b1111,
        ["Y"] = RSHIFT(VRamAddress.Get("Y", v), 2),
        ["X"] = RSHIFT(VRamAddress.Get("X", v), 2)
    }
    return 0x2000 + attrAddr
end


function m.GetLowPatternTableAddress(right: boolean, tileNumber: u8, row: number)
    return PatternTableAddress.Compose{
        ["FineY"] = row,
        ["BitPlane"] = 0,
        ["TileNumber"] = tileNumber,
        ["Half"] = if right then 1 else 0
    }
end


function m.GetHighPatternTableAddress(right, tileNumber, row)
    return PatternTableAddress.Set(
        "BitPlane", m.GetLowPatternTableAddress(right, tileNumber, row), 1
    )
end


-- If divisible by 4, falls back to the background color.
function m.GetColorByPixelValue(index: number, bus: Bus)
    return bus.Read(0x3F00 + if index%4 == 0 then 0 else index)
end


function m.GetPatternValueFromBitPlanes(lo: u8, hi: u8, fineX: number)
    return
        (if h.GetBit(fineX, lo) then 1 else 0) +
        (if h.GetBit(fineX, hi) then 2 else 0)
end


function m.GetOffsetInAttributeByteFromVRamAddress(vramAddr: u16)
    return (
        (if VRamAddress.Get("X", vramAddr)%4 >= 2 then 1 else 0) +
        (if VRamAddress.Get("Y", vramAddr)%4 >= 2 then 1 else 0) * 2
    ) * 2
end


function m.SpriteIndexAtDot(
    dot: number, secondaryOam: buffer
): number?
    for i = 0, 7 do
        local x, y =
            OAMGetters.X(secondaryOam, i),
            OAMGetters.Y(secondaryOam, i)

        if y >= 0xEF then continue end

        if dot >= x and x + 8 > dot then
            return i
        end
    end

    return nil
end


function _initializeSecondaryOAM(secondaryOam: buffer)
    buffer.fill(secondaryOam, 0, 0xFF, 8*4 - 1)
end


function _putDrawnObjectsInSecondaryOam_Return_IfOverflow_And_IfSprite0(
    scanline: number,
    spriteSizeFlag: boolean,
    oam: buffer,
    secondaryOam: buffer
): (boolean, boolean)
    local spriteFoundCount = 0
    local spriteSize = if spriteSizeFlag then 16 else 8
    local isSprite0BeingDrawn = false

    for i = 0, 63 do
        local y = OAMGetters.Y(oam, i) + 1
        if not (y <= scanline and y + spriteSize > scanline and y < 0xEF) then continue end
        isSprite0BeingDrawn = isSprite0BeingDrawn or i == 0
        
        WU32(
            secondaryOam,
            spriteFoundCount * 4,
            RU32(oam, i * 4)
        )

        spriteFoundCount += 1
        if spriteFoundCount > 7 then break end
    end

    return spriteFoundCount > 7, isSprite0BeingDrawn
end


function _shouldSpriteBeRendered(
    isBgTransparent: boolean,
    isSpriteTransparent: boolean,
    spritePriority: boolean
): boolean
    
    return (not spritePriority)
        and not isSpriteTransparent
        or (isBgTransparent and not isSpriteTransparent)
end


function _incrementVRamAddressAfterCpuAccess(regs: Regs, iRegs: InternalRegs)
    local inc = if PpuControl.Get("I", regs.PPUCTRL) == 0 then 1 else 32
    iRegs.v = BAND(iRegs.v + inc, 0x7FFF)
end


function _getAddressAfterIncrementHorizontal(vramAddr: u16): u16
    if VRamAddress.Get("X", vramAddr) == 31 then
        local n = VRamAddress.Get("N", vramAddr)
        vramAddr = VRamAddress.Set("X", vramAddr, 0)

        -- Flip X nametable bit
        return VRamAddress.Set(
            "N", vramAddr,
            h.SetBit(0, n, not h.GetBit(0, n))
        )
    else
        return VRamAddress.Set("X", vramAddr, VRamAddress.Get("X", vramAddr) + 1)
    end
end

function _getAddressAfterIncrementVertical(vramAddr: u16)
    -- Should we increment fine y, or set it to 0?
    if VRamAddress.Get("y", vramAddr) == 7 then
        local coarseY = VRamAddress.Get("Y", vramAddr)
        vramAddr = VRamAddress.Set("y", vramAddr, 0)

        -- Do we set Y to 0, and if we do, do we flip the nametable?
        if coarseY == 29 then
            local n = VRamAddress.Get("N", vramAddr)
            vramAddr = VRamAddress.Set(
                "N", vramAddr,
                h.SetBit(1, n, not h.GetBit(1, n))
            )
            coarseY = 0
        elseif coarseY == 31 then
            coarseY = 0
        else
            coarseY += 1
        end

        return VRamAddress.Set("Y", vramAddr, coarseY)
    else
        return VRamAddress.Set("y", vramAddr, VRamAddress.Get("y", vramAddr) + 1)
    end
end


function _getAddressAfterTransferX(v: u16, t: u16): u16
    return VRamAddress.Compose{
        ["X"] = VRamAddress.Get("X", t),
        ["Y"] = VRamAddress.Get("Y", v),
        ["N"] = BAND(VRamAddress.Get("N", v), 0b10) + -- Low bit is X nametable
                BAND(VRamAddress.Get("N", t), 0b01),
        ["y"] = VRamAddress.Get("y", v),
    }
end


function _getAddressAfterTransferY(v: u16, t: u16): u16
    return VRamAddress.Compose{
        ["X"] = VRamAddress.Get("X", v),
        ["Y"] = VRamAddress.Get("Y", t),
        ["N"] = BAND(VRamAddress.Get("N", v), 0b01) + -- High bit is Y nametable
                BAND(VRamAddress.Get("N", t), 0b10),
        ["y"] = VRamAddress.Get("y", t),
    }
end


--[[
    Performs memory fetching logic for dots 321-336 and 1-256.
    "Progress" is the stage of the fetching in these dots per tile.
    I.e, a progress of 1 means the second cycle of the nametable fetch.

    vramAddr is likely the v register.
]]
function _fetchToLatchesBasedOnProgress(
    bus: Bus, ppuCtrl: u8, vramAddr: u16,
    latches: Latches, backgroundFetchProgress: number
)
    if backgroundFetchProgress%2 == 1 then return end

    local latchName, addr = unpack(
        if backgroundFetchProgress == 0 then {
            "Nametable", m.GetTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 2 then {
            "AttributeTable", m.GetAttributeAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 4 then {
            "PatternTableTileLow",
            m.GetLowPatternTableAddress(
                PpuControl.GetBit("B", ppuCtrl), latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        elseif backgroundFetchProgress == 6 then {
            "PatternTableTileHigh",
            m.GetHighPatternTableAddress(
                PpuControl.GetBit("B", ppuCtrl), latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        else error("Invalid input")
    )

    latches[latchName] = bus.Read(addr)
end


function _shift(shifters: Shifters)
    shifters.AttributeHi = RSHIFT(shifters.AttributeHi, 1)
    shifters.AttributeLo = RSHIFT(shifters.AttributeLo, 1)
    shifters.PatternHi = RSHIFT(shifters.PatternHi, 1)
    shifters.PatternLo = RSHIFT(shifters.PatternLo, 1)
end

function _reloadShifters(
    latches: Latches, shifters: Shifters, vramAddr: u16
)

    local offsetInAttributeByte =
        m.GetOffsetInAttributeByteFromVRamAddress(vramAddr)    

    shifters.AttributeLo = BAND(shifters.AttributeLo, 0x00FF) +
        LSHIFT(
            0xFF * if h.GetBit(
                offsetInAttributeByte,
                latches.AttributeTable
            ) then 1 else 0,
            8
        )

    shifters.AttributeHi = BAND(shifters.AttributeHi, 0x00FF) +
        LSHIFT(
            0xFF * if h.GetBit(
                offsetInAttributeByte + 1,
                latches.AttributeTable
            ) then 1 else 0,
            8
        )

    shifters.PatternLo = BAND(shifters.PatternLo, 0x00FF) +
        LSHIFT(h.ReverseBitOrderU8(latches.PatternTableTileLow), 8)

    shifters.PatternHi = BAND(shifters.PatternHi, 0x00FF) +
        LSHIFT(h.ReverseBitOrderU8(latches.PatternTableTileHigh), 8)
end


function _isRenderingEnabled(ppuMask: u8)
    return BOR(
            PpuMask.Get("b", ppuMask),
            PpuMask.Get("s", ppuMask)
        ) > 0
end


function _isInVBlank(scanline: number)
    return scanline < 261 and scanline >= 240
end


function _cycleAndReturnPixel(
    bus: Bus, iState: State, dot: number, scanline: number
): u8
    local returnedPixel = 0b00000

    local regs, shifters, latches, iRegs =
        iState.Registers, iState.Shifters,
        iState.Latches, iState.InternalRegisters
    
    local isVisibleScanline = scanline >= 0 and scanline <= 239
    local isPreRenderLine = scanline == 261

    local isRenderingEnabled = _isRenderingEnabled(regs.PPUMASK)

    if isPreRenderLine and dot == 1 then
        regs.PPUSTATUS = PpuStatus.Set("V", regs.PPUSTATUS, 0)
        regs.PPUSTATUS = PpuStatus.Set("S", regs.PPUSTATUS, 0)
        regs.PPUSTATUS = PpuStatus.Set("O", regs.PPUSTATUS, 0)
    end

    if isVisibleScanline or isPreRenderLine then
        local bgPixel: u8 = 0b00000
        local spriteIndex = m.SpriteIndexAtDot(dot, iState.SecondaryOAM)

        if (dot >= 1 and dot <= 256) or (dot >= 321 and dot <= 336) then

            local fetchProgress = (dot - 1)%8
            _fetchToLatchesBasedOnProgress(
                bus, regs.PPUCTRL, iRegs.v, latches,
                fetchProgress
            )

            if fetchProgress == 7 then
                _reloadShifters(latches, shifters, iRegs.v)

                if isRenderingEnabled then
                    iRegs.v = _getAddressAfterIncrementHorizontal(iRegs.v)
                end

                if isRenderingEnabled and dot == 256 then
                    iRegs.v = _getAddressAfterIncrementVertical(iRegs.v)
                end
            end

            bgPixel = _getBackgroundPixelValue(shifters, iRegs.x)

            if PpuMask.GetBit("b", regs.PPUMASK) then
                _shift(shifters)
            end

        elseif dot >= 257 and dot <= 320 then
            if isRenderingEnabled and dot == 257 then
                iRegs.v = _getAddressAfterTransferX(iRegs.v, iRegs.t)
            end
            if isRenderingEnabled and dot >= 280 and dot <= 304 then
                if isPreRenderLine then
                    iRegs.v = _getAddressAfterTransferY(iRegs.v, iRegs.t)
                end
            end

            if isRenderingEnabled then
                regs.OAMADDR = 0x00
            end

            --[[
                Dots 257-320:
                Data for sprites on next scanline are fetched. (2 dots each)
                In order:
                - 2 garbage nametable bytes (Occur to share circuitry w/ bg)
                - Pattern table tile low
                - Pattern table tile high
            ]]
            if dot == 320 then
                _initializeSecondaryOAM(iState.SecondaryOAM)
                local isSpriteOverflow, isSprite0BeingDrawn =
                    _putDrawnObjectsInSecondaryOam_Return_IfOverflow_And_IfSprite0(
                        scanline + 1,
                        PpuControl.GetBit("H", regs.PPUCTRL),
                        iState.OAM,
                        iState.SecondaryOAM
                    )

                iState.IsSprite0BeingDrawn = isSprite0BeingDrawn

                -- Technically this flag should only be set once per frame.
                -- If bugs are apparent, make sure to change this.
                if not PpuStatus.GetBit("O", regs.PPUSTATUS) then
                    regs.PPUSTATUS = PpuStatus.SetBit("O", regs.PPUSTATUS, isSpriteOverflow)
                end
            end
            
        elseif dot == 337 or dot == 339 then
            _fetchToLatchesBasedOnProgress(
                bus, regs.PPUCTRL, iRegs.v, latches,
                0 -- 0 progress implies nametable fetch
            )
        end

        if spriteIndex then
            local spritePixel = _spritePixelAtScreenPosition(
                bus,
                spriteIndex,
                scanline,
                dot,
                iState.SecondaryOAM,
                PpuControl.GetBit("H", iState.Registers.PPUCTRL),
                PpuControl.GetBit("S", iState.Registers.PPUCTRL)
            )

            local isBgTransparent = BAND(bgPixel, 0b11) == 0
            local isSpriteTransparent = BAND(spritePixel, 0b11) == 0

            local spriteAttributes = OAMGetters.Attributes(iState.SecondaryOAM, spriteIndex)
            local spritePriority = ObjectAttribute.GetBit("Priority", spriteAttributes)
            local shouldSpriteBeRendered = _shouldSpriteBeRendered(
                isBgTransparent, isSpriteTransparent, spritePriority
            )

            -- Technically this flag should only be set once per frame.
            -- If bugs are apparent, make sure to change this.
            if not PpuStatus.GetBit("S", regs.PPUSTATUS) then
                local isSprite0Hit = iState.IsSprite0BeingDrawn
                    and spriteIndex == 0
                    and not (isBgTransparent or isSpriteTransparent)

                regs.PPUSTATUS = PpuStatus.SetBit("S", regs.PPUSTATUS, isSprite0Hit)
            end
            
            returnedPixel = shouldSpriteBeRendered
                and spritePixel
                or bgPixel
        else
            returnedPixel = bgPixel
        end

    elseif scanline >= 241 and scanline <= 261 then
        if scanline == 241 and dot == 1 then
            regs.PPUSTATUS = PpuStatus.Set("V", regs.PPUSTATUS, 1)
        end
    end


    return returnedPixel
end


function _getBackgroundPixelValue(shifters: Shifters, fineX: u8)
    local patternValue = 
        (if h.GetBit(fineX, shifters.PatternLo) then 1 else 0) +
        (if h.GetBit(fineX, shifters.PatternHi) then 2 else 0)

    local attributeValue = 
        (if h.GetBit(fineX, shifters.AttributeLo) then 1 else 0) +
        (if h.GetBit(fineX, shifters.AttributeHi) then 2 else 0)

    return m.GetPixelValue(patternValue, attributeValue, false)
end


--[[
    Todo:
    - Look at & implement bank logic
    - Implement 8x16 mode
    - Implement flipping
]]
function _spritePixelAtScreenPosition(
    bus: Bus,
    objIndex: number,
    scanline: number,
    dot: number,
    secondaryOam: buffer,
    ppuCtrlSpriteSize: boolean,
    ppuCtrlSpriteBank: boolean
): u8
    local spriteAttributes = OAMGetters.Attributes(secondaryOam, objIndex)

    local isRightBank, tileIndex, row = _getSpritePatternTablePropertiesAtScreenPosition(
        OAMGetters.TileNumber(secondaryOam, objIndex),
        OAMGetters.Y(secondaryOam, objIndex),
        ObjectAttribute.GetBit("FlipY", spriteAttributes),
        scanline,
        ppuCtrlSpriteSize,
        ppuCtrlSpriteBank
    )

    return _spritePixelFromProperties(
        dot,
        spriteAttributes,
        OAMGetters.X(secondaryOam, objIndex),
        bus.Read(m.GetLowPatternTableAddress(isRightBank, tileIndex, row)),
        bus.Read(m.GetHighPatternTableAddress(isRightBank, tileIndex, row))
    )
end


function _spritePixelFromProperties(
    dot: number,
    spriteAttributes: u8,
    spriteX: u8,
    lowPatternValue: u8,
    highPatternValue: u8
): u8
    local column = dot - spriteX

    column = if ObjectAttribute.GetBit("FlipX", spriteAttributes)
        then column
        else 7 - column
    

    local patternValue = m.GetPatternValueFromBitPlanes(
        lowPatternValue, highPatternValue, column
    )

    local attributeValue = ObjectAttribute.Get("Palette", spriteAttributes)

    return m.GetPixelValue(patternValue, attributeValue, true)
end


function _getSpritePatternTablePropertiesAtScreenPosition(
    spriteTileNumber: u8,
    spriteY: u8,
    spriteFlipY: boolean,
    scanline: number,
    ppuCtrlSpriteSize: boolean,
    ppuCtrlSpriteBank: boolean
): (boolean, u8, number)
    
    local row = scanline - (spriteY + 1)
    local isRightBank, tileIndex

    if ppuCtrlSpriteSize then
        isRightBank = ObjectTileNumber.GetBit("Bank", spriteTileNumber)
        tileIndex = ObjectTileNumber.Get("TileNumber", spriteTileNumber)
    else
        isRightBank = ppuCtrlSpriteBank
        tileIndex = spriteTileNumber
    end

    row = if spriteFlipY
        then 7 - row
        else row


    return isRightBank, tileIndex, row
end


return m
