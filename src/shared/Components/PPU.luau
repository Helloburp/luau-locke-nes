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


local _oamGettersX, _oamGettersY, _oamGettersTileNumber, _oamGettersAttributes =
    OAMGetters.X,
    OAMGetters.Y,
    OAMGetters.TileNumber,
    OAMGetters.Attributes

local _ppuControlGetBit, _ppuControlGet =
    PpuControl.GetBit,
    PpuControl.Get

local _ppuStatusGetBit, _ppuStatusSetBit, _ppuStatusSet  =
    PpuStatus.GetBit,
    PpuStatus.SetBit,
    PpuStatus.Set

local _objectTileNumberGetBit, _objectTileNumberGet =
    ObjectTileNumber.GetBit,
    ObjectTileNumber.Get

local _objectAttributeGetBit, _objectAttributeGet =
    ObjectAttribute.GetBit,
    ObjectAttribute.Get


local _hGetBit, _hSetBit, _hReverseBitOrderU8 =
    h.GetBit,
    h.SetBit,
    h.ReverseBitOrderU8

local _ppuMaskGet, _ppuMaskGetBit =
    PpuMask.Get,
    PpuMask.GetBit

local _vramAddressGet, _vramAddressSet, _vramAddressCompose =
    VRamAddress.Get,
    VRamAddress.Set,
    VRamAddress.Compose

local _patternTableAddressSet, _patternTableAddressCompose =
    PatternTableAddress.Set,
    PatternTableAddress.Compose

local _attributeAddressCompose = AttributeAddress.Compose


function m.Clock(
    ppu: PPU,
    _read: (u16) -> u8,
    _setPixelForCycle: (i: number, color: number) -> ()
)
    local state = ppu.State
    local ppuMask = state.Registers.PPUMASK
    
    -- Perform skip cycle if at the beginning of an odd frame & BG set
    if state.FrameCounter%2 == 0 and state.ExecutionState.Cycles == 0 and
        _ppuMaskGetBit("b", state.Registers.PPUMASK)
    then
        state.ExecutionState.Cycles += 1
    end

    local cycles = state.ExecutionState.Cycles
    local dot, scanline = _getDotInFrame(cycles), _getScanlineInFrame(cycles)

    local isRenderingEnabled = BAND(ppuMask, 0b00001000) ~= 0 or
        BAND(ppuMask, 0b00010000) ~= 0



    -- Perform main arithmetic and return pixel for this cycle
    local pixel = _cycleAndReturnPixel(
        _read, state, dot, scanline
    )

    -- _setPixelForCycle(cycles, _getColorByPixelValue(pixel, _read))
    _setPixelForCycle(cycles, _read(0x3F00 + if pixel%4 == 0 then 0 else pixel))


    -- Perform NMI if applicable
    if dot == 1 and scanline == 241 and _ppuControlGetBit("V", state.Registers.PPUCTRL) then
        ppu.TriggerNmi()
    end

    -- Scanline callback for MMC3 IRQ
    if dot == 260 and scanline < 240 and isRenderingEnabled then
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
        _ppuControlGet("V", regs.PPUCTRL),
        _ppuControlGet("V", val)
    local inVBlank = _isInVBlank(scanlineCount)
    regs.PPUCTRL = val

    iRegs.t = _vramAddressSet("N", iRegs.t, BAND(val, 0x03))

    return oldNmi == 0 and newNmi == 1 and inVBlank
end


function m.PpuMaskWrite(regs: Regs, val: u8)
    regs.PPUMASK = val
end


function m.PpuStatusRead(regs: Regs, internalRegs: InternalRegs)
    local oldStatus = regs.PPUSTATUS
    regs.PPUSTATUS = _ppuStatusSet("V", regs.PPUSTATUS, 0)
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
        iRegs.t = _vramAddressSet("X", iRegs.t, RSHIFT(val, 3))
        iRegs.x = BAND(val, 0x07)
    else
        iRegs.t = _vramAddressSet("Y", iRegs.t, RSHIFT(val, 3))
        iRegs.t = _vramAddressSet("y", iRegs.t, BAND(val, 0x07))
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


-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function _getTileAddressFromVRamAddress(v: u16)
    return 0x2000 + _vramAddressSet("y", v, 0)
end

function _getAttributeAddressFromVRamAddress(v: u16)
    local attrAddr = _attributeAddressCompose{
        ["N"] = _vramAddressGet("N", v),
        ["AttributeOffset"] = 0b1111,
        ["Y"] = RSHIFT(_vramAddressGet("Y", v), 2),
        ["X"] = RSHIFT(_vramAddressGet("X", v), 2)
    }
    return 0x2000 + attrAddr
end


function _getLowPatternTableAddress(right: boolean, tileNumber: u8, row: number)
    -- return _patternTableAddressCompose{
    --     ["FineY"] = row,
    --     ["BitPlane"] = 0,
    --     ["TileNumber"] = tileNumber,
    --     ["Half"] = if right then 1 else 0
    -- }
    return row
        + tileNumber*2^4
        + (if right then 1 else 0)*2^12
end


function _getHighPatternTableAddress(right, tileNumber, row)
    return _patternTableAddressSet(
        "BitPlane", _getLowPatternTableAddress(right, tileNumber, row), 1
    )
end



function _getPatternValueFromBitPlanes(lo: u8, hi: u8, fineX: number)
    return
        (if _hGetBit(fineX, lo) then 1 else 0) +
        (if _hGetBit(fineX, hi) then 2 else 0)
end


function _getOffsetInAttributeByteFromVRamAddress(vramAddr: u16)
    return (
        (if _vramAddressGet("X", vramAddr)%4 >= 2 then 1 else 0) +
        (if _vramAddressGet("Y", vramAddr)%4 >= 2 then 1 else 0) * 2
    ) * 2
end


function _spriteIndexAndPixelAtScreenPosition(
    _read: (u16) -> u8,
    scanline: number,
    dot: number,
    secondaryOam: buffer,
    ppuCtrl: number
): (number?, u8)
    for i = 0, 7 do
        -- local y = _oamGettersY(iState.SecondaryOAM, i)
        local y = RU8(secondaryOam, i * 4 + 0)

        if y >= 0xEF then continue end

        local spritePixel = _spritePixelAtScreenPosition(
            _read,
            i,
            scanline,
            dot,
            secondaryOam,
            -- _ppuControlGetBit("H", iState.Registers.PPUCTRL),
            BAND(ppuCtrl, 0b00100000) > 0,
            -- _ppuControlGetBit("S", iState.Registers.PPUCTRL)
            BAND(ppuCtrl, 0b00001000) > 0
        )

        local isSpriteTransparent = BAND(spritePixel, 0b11) == 0
        if isSpriteTransparent then continue end

        -- local x = _oamGettersX(iState.SecondaryOAM, i)
        local x = RU8(secondaryOam, i * 4 + 3)

        if dot >= x and x + 8 > dot then
            return i, spritePixel
        end
    end

    return nil, 0x00
end


function _getDotInFrame(cyclesThisFrame: number)
    return cyclesThisFrame%C.DOTS_PER_SCANLINE
end

function _getScanlineInFrame(cyclesThisFrame: number)
    return (cyclesThisFrame - cyclesThisFrame%C.DOTS_PER_SCANLINE)
        / C.DOTS_PER_SCANLINE
end


function _getPixelValue(
    patternValue: number, attributeValue: number, isSprite: boolean
): u8
    return (
        patternValue +
        LSHIFT(attributeValue, 2) + 
        LSHIFT(if isSprite then 1 else 0, 4)
    )
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
    local inc = if _ppuControlGet("I", regs.PPUCTRL) == 0 then 1 else 32
    iRegs.v = BAND(iRegs.v + inc, 0x7FFF)
end


function _getAddressAfterIncrementHorizontal(vramAddr: u16): u16
    if _vramAddressGet("X", vramAddr) == 31 then
        local n = _vramAddressGet("N", vramAddr)
        vramAddr = _vramAddressSet("X", vramAddr, 0)

        -- Flip X nametable bit
        return _vramAddressSet(
            "N", vramAddr,
            _hSetBit(0, n, not _hGetBit(0, n))
        )
    else
        return _vramAddressSet("X", vramAddr, _vramAddressGet("X", vramAddr) + 1)
    end
end


function _getAddressAfterIncrementVertical(vramAddr: u16)
    -- Should we increment fine y, or set it to 0?
    if _vramAddressGet("y", vramAddr) == 7 then
        local coarseY = _vramAddressGet("Y", vramAddr)
        vramAddr = _vramAddressSet("y", vramAddr, 0)

        -- Do we set Y to 0, and if we do, do we flip the nametable?
        if coarseY == 29 then
            local n = _vramAddressGet("N", vramAddr)
            vramAddr = _vramAddressSet(
                "N", vramAddr,
                _hSetBit(1, n, not _hGetBit(1, n))
            )
            coarseY = 0
        elseif coarseY == 31 then
            coarseY = 0
        else
            coarseY += 1
        end

        return _vramAddressSet("Y", vramAddr, coarseY)
    else
        return _vramAddressSet("y", vramAddr, _vramAddressGet("y", vramAddr) + 1)
    end
end


function _getAddressAfterTransferX(v: u16, t: u16): u16
    return _vramAddressCompose{
        ["X"] = _vramAddressGet("X", t),
        ["Y"] = _vramAddressGet("Y", v),
        ["N"] = BAND(_vramAddressGet("N", v), 0b10) + -- Low bit is X nametable
                BAND(_vramAddressGet("N", t), 0b01),
        ["y"] = _vramAddressGet("y", v),
    }
end



function _getAddressAfterTransferY(v: u16, t: u16): u16
    return _vramAddressCompose{
        ["X"] = _vramAddressGet("X", v),
        ["Y"] = _vramAddressGet("Y", t),
        ["N"] = BAND(_vramAddressGet("N", v), 0b01) + -- High bit is Y nametable
                BAND(_vramAddressGet("N", t), 0b10),
        ["y"] = _vramAddressGet("y", t),
    }
end


--[[
    Performs memory fetching logic for dots 321-336 and 1-256.
    "Progress" is the stage of the fetching in these dots per tile.
    I.e, a progress of 1 means the second cycle of the nametable fetch.

    vramAddr is likely the v register.
]]
function _fetchToLatchesBasedOnProgress(
    _read: (u16) -> u8, ppuCtrl: u8, vramAddr: u16,
    latches: Latches, backgroundFetchProgress: number
)
    if backgroundFetchProgress%2 == 1 then return end

    local latchName, addr = unpack(
        if backgroundFetchProgress == 0 then {
            "Nametable", _getTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 2 then {
            "AttributeTable", _getAttributeAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 4 then {
            "PatternTableTileLow",
            _getLowPatternTableAddress(
                _ppuControlGetBit("B", ppuCtrl), latches.Nametable, _vramAddressGet("y", vramAddr)
            )
        }
        elseif backgroundFetchProgress == 6 then {
            "PatternTableTileHigh",
            _getHighPatternTableAddress(
                _ppuControlGetBit("B", ppuCtrl), latches.Nametable, _vramAddressGet("y", vramAddr)
            )
        }
        else error("Invalid input")
    )

    latches[latchName] = _read(addr)
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
        _getOffsetInAttributeByteFromVRamAddress(vramAddr)    

    shifters.AttributeLo = BAND(shifters.AttributeLo, 0x00FF) +
        LSHIFT(
            0xFF * if _hGetBit(
                offsetInAttributeByte,
                latches.AttributeTable
            ) then 1 else 0,
            8
        )

    shifters.AttributeHi = BAND(shifters.AttributeHi, 0x00FF) +
        LSHIFT(
            0xFF * if _hGetBit(
                offsetInAttributeByte + 1,
                latches.AttributeTable
            ) then 1 else 0,
            8
        )

    shifters.PatternLo = BAND(shifters.PatternLo, 0x00FF) +
        LSHIFT(_hReverseBitOrderU8(latches.PatternTableTileLow), 8)

    shifters.PatternHi = BAND(shifters.PatternHi, 0x00FF) +
        LSHIFT(_hReverseBitOrderU8(latches.PatternTableTileHigh), 8)
end


function _isRenderingEnabled(ppuMask: u8)
        -- _ppuMaskGet("b", ppuMask),
    return BAND(ppuMask, 0b00001000) ~= 0 or
        -- _ppuMaskGet("s", ppuMask)
        BAND(ppuMask, 0b00010000) ~= 0
end


function _isInVBlank(scanline: number)
    return scanline < 261 and scanline >= 240
end


function _cycleAndReturnPixel(
    _read: (u16) -> u8, iState: State, dot: number, scanline: number
): u8
    local returnedPixel = 0b00000

    local regs, shifters, latches, iRegs, secondaryOam =
        iState.Registers, iState.Shifters,
        iState.Latches, iState.InternalRegisters,
        iState.SecondaryOAM
    
    local ppuMask = regs.PPUMASK
    
    local isVisibleScanline = scanline >= 0 and scanline <= 239
    local isPreRenderLine = scanline == 261

    -- _isRenderingEnabled(ppuMask)
    local isRenderingEnabled = BAND(ppuMask, 0b00001000) ~= 0 or
        BAND(ppuMask, 0b00010000) ~= 0


    if isPreRenderLine and dot == 1 then
        regs.PPUSTATUS = _ppuStatusSet("V", regs.PPUSTATUS, 0)
        regs.PPUSTATUS = _ppuStatusSet("S", regs.PPUSTATUS, 0)
        regs.PPUSTATUS = _ppuStatusSet("O", regs.PPUSTATUS, 0)
    end

    if isVisibleScanline or isPreRenderLine then
        local bgPixel: u8 = 0b00000
        local spriteIndex, spritePixel = _spriteIndexAndPixelAtScreenPosition(
            _read, scanline, dot, secondaryOam, regs.PPUCTRL
        )

        if (dot >= 1 and dot <= 256) or (dot >= 321 and dot <= 336) then

            local fetchProgress = (dot - 1)%8
            _fetchToLatchesBasedOnProgress(
                _read, regs.PPUCTRL, iRegs.v, latches,
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

            if _ppuMaskGetBit("b", regs.PPUMASK) then
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
                        _ppuControlGetBit("H", regs.PPUCTRL),
                        iState.OAM,
                        iState.SecondaryOAM
                    )

                iState.IsSprite0BeingDrawn = isSprite0BeingDrawn

                -- Technically this flag should only be set once per frame.
                -- If bugs are apparent, make sure to change this.
                if not _ppuStatusGetBit("O", regs.PPUSTATUS) then
                    regs.PPUSTATUS = _ppuStatusSetBit("O", regs.PPUSTATUS, isSpriteOverflow)
                end
            end
            
        elseif dot == 337 or dot == 339 then
            _fetchToLatchesBasedOnProgress(
                _read, regs.PPUCTRL, iRegs.v, latches,
                0 -- 0 progress implies nametable fetch
            )
        end

        if spriteIndex then
            local isBgTransparent = BAND(bgPixel, 0b11) == 0
            local isSpriteTransparent = BAND(spritePixel, 0b11) == 0

            local spriteAttributes = _oamGettersAttributes(iState.SecondaryOAM, spriteIndex)
            local spritePriority = _objectAttributeGetBit("Priority", spriteAttributes)
            local shouldSpriteBeRendered = _shouldSpriteBeRendered(
                isBgTransparent, isSpriteTransparent, spritePriority
            )

            -- Technically this flag should only be set once per frame.
            -- If bugs are apparent, make sure to change this.
            if not _ppuStatusGetBit("S", regs.PPUSTATUS) then
                local isSprite0Hit = iState.IsSprite0BeingDrawn
                    and spriteIndex == 0
                    and not (isBgTransparent or isSpriteTransparent)

                regs.PPUSTATUS = _ppuStatusSetBit("S", regs.PPUSTATUS, isSprite0Hit)
            end
            
            returnedPixel = shouldSpriteBeRendered
                and spritePixel
                or bgPixel
        else
            returnedPixel = bgPixel
        end

    elseif scanline >= 241 and scanline <= 261 then
        if scanline == 241 and dot == 1 then
            regs.PPUSTATUS = _ppuStatusSet("V", regs.PPUSTATUS, 1)
        end
    end


    return returnedPixel
end


function _getBackgroundPixelValue(shifters: Shifters, fineX: u8)
    local patternValue = 
        (if _hGetBit(fineX, shifters.PatternLo) then 1 else 0) +
        (if _hGetBit(fineX, shifters.PatternHi) then 2 else 0)

    local attributeValue = 
        (if _hGetBit(fineX, shifters.AttributeLo) then 1 else 0) +
        (if _hGetBit(fineX, shifters.AttributeHi) then 2 else 0)

    return _getPixelValue(patternValue, attributeValue, false)
end


-- If divisible by 4, falls back to the background color.
function _getColorByPixelValue(index: number, _read: (u16) -> (u8))
    return _read(0x3F00 + if index%4 == 0 then 0 else index)
end


--[[
    Todo:
    - Look at & implement bank logic
    - Implement 8x16 mode
    - Implement flipping
]]
function _spritePixelAtScreenPosition(
    _read: (u16) -> u8,
    objIndex: number,
    scanline: number,
    dot: number,
    secondaryOam: buffer,
    ppuCtrlSpriteSize: boolean,
    ppuCtrlSpriteBank: boolean
): u8
    local spriteAttributes = _oamGettersAttributes(secondaryOam, objIndex)

    local isRightBank, tileIndex, row = _getSpritePatternTablePropertiesAtScreenPosition(
        -- _oamGettersTileNumber(secondaryOam, objIndex),
        RU8(secondaryOam, objIndex * 4 + 1),

        -- _oamGettersY(secondaryOam, objIndex),
        RU8(secondaryOam, objIndex * 4 + 0),

        -- _objectAttributeGetBit("FlipY", spriteAttributes),
        BAND(spriteAttributes, 0b10000000) ~= 0,

        scanline,
        ppuCtrlSpriteSize,
        ppuCtrlSpriteBank
    )

    return _spritePixelFromProperties(
        dot,
        spriteAttributes,

        -- _oamGettersX(secondaryOam, objIndex),
        RU8(secondaryOam, objIndex * 4 + 3),

        _read(_getLowPatternTableAddress(isRightBank, tileIndex, row)),
        _read(_getHighPatternTableAddress(isRightBank, tileIndex, row))
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

    column = if _objectAttributeGetBit("FlipX", spriteAttributes)
        then column
        else 7 - column
    

    local patternValue = _getPatternValueFromBitPlanes(
        lowPatternValue, highPatternValue, column
    )

    local attributeValue = _objectAttributeGet("Palette", spriteAttributes)

    return _getPixelValue(patternValue, attributeValue, true)
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

        -- isRightBank = _objectTileNumberGetBit("Bank", spriteTileNumber)
        isRightBank = BAND(0x01, spriteTileNumber) ~= 0

        -- tileIndex = _objectTileNumberGet("TileNumber", spriteTileNumber)
        tileIndex = RSHIFT(spriteTileNumber, 1)
    else
        isRightBank = ppuCtrlSpriteBank
        tileIndex = spriteTileNumber
    end

    row = if spriteFlipY
        then 7 - row
        else row


    return isRightBank, tileIndex, row
end

m.GetDotInFrame = _getDotInFrame
m.GetScanlineInFrame = _getScanlineInFrame
m.GetPixelValue = _getPixelValue
m.GetColorByPixelValue = _getColorByPixelValue
m.GetTileAddressFromVRamAddress = _getTileAddressFromVRamAddress
m.GetAttributeAddressFromVRamAddress = _getAttributeAddressFromVRamAddress
m.GetLowPatternTableAddress = _getLowPatternTableAddress
m.GetHighPatternTableAddress = _getHighPatternTableAddress
m.GetPatternValueFromBitPlanes = _getPatternValueFromBitPlanes
m.GetOffsetInAttributeByteFromVRamAddress = _getOffsetInAttributeByteFromVRamAddress

return m
