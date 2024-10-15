local C = require(script.Parent["PPU.constants"])
local h = require(script.Parent.Helpers)


local T = require(script.Parent["PPU.types"])
type Regs = T.Registers
type InternalRegs = T.InternalRegisters
type Latches = T.Latches
type Shifters = T.Shifters
type InternalState = T.InternalState
type PPU = T.PPU

local T_H = require(script.Parent["Helpers.types"])
type u8 = T_H.u8
type u16 = T_H.u16
type Bus = T_H.Bus
type ExecutionState = T_H.ExecutionState
type BitfieldFunctions<T> = T_H.BitfieldFunctions<T>
type Peripheral = T_H.Peripheral


local VRamAddress, AttributeAddress, PatternTableAddress,
    PpuControl, PpuMask, PpuStatus =
    C.BITFIELD_UTIL.VRamAddress,
    C.BITFIELD_UTIL.AttributeAddress,
    C.BITFIELD_UTIL.PatternTableAddress,
    C.BITFIELD_UTIL.PpuControl,
    C.BITFIELD_UTIL.PpuMask,
    C.BITFIELD_UTIL.PpuStatus


local m = {}

local LSHIFT, RSHIFT, BOR, BAND =
    bit32.lshift, bit32.rshift, bit32.bor, bit32.band
local RU8, WU8 = buffer.readu8, buffer.writeu8
local _u8, _u16 = h.WrapU8, h.WrapU16


function m.Clock(ppu: PPU, bus: Bus)
    local iState = ppu.InternalState
    
    -- Perform skip cycle if at the beginning of an odd frame & BG set
    if iState.FrameCounter%2 == 0 and ppu.ExecutionState.Cycles == 0 and
        PpuMask.GetBit("b", iState.Registers.PPUMASK)
    then
        ppu.ExecutionState.Cycles += 1
    end

    local cycles = ppu.ExecutionState.Cycles
    local dot, scanline = _getDot(cycles), _getScanline(cycles)

    -- Perform main arithmetic and return pixel for this cycle
    local pixel = _cycleAndReturnPixel(
        bus, ppu.InternalState, dot, scanline
    )
    ppu.SetPixelForCycle(cycles, _getColorByPixelValue(pixel, bus))

    -- Perform NMI if applicable
    if dot == 1 and scanline == 241 and
        PpuControl.GetBit("V", iState.Registers.PPUCTRL)
    then
        ppu.TriggerNmi()
    end

    ppu.ExecutionState.Cycles = (cycles + 1)%C.CYCLES_PER_FRAME_NOSKIP
    ppu.ExecutionState.Clock += 1

    if ppu.ExecutionState.Cycles < cycles then
        ppu.OnFrameComplete()
        iState.FrameCounter += 1
    end
end


function m.PpuCtrlWriteAndReturnNmi(
    regs: Regs, val: u8, cyclesThisFrame: number
): boolean
    local oldNmi, newNmi =
        PpuControl.Get("V", regs.PPUCTRL),
        PpuControl.Get("V", val)
    local inVBlank = _isInVBlank(_getScanline(cyclesThisFrame))
    regs.PPUCTRL = val

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
    regs: Regs, val: u8, cyclesThisFrame: number, oam: buffer
)
    if not _isInVBlank(_getScanline(cyclesThisFrame))
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
        iRegs.v = BAND(iRegs.v, 0x00FF) + LSHIFT(BAND(val, 0x7F), 8)
    else
        iRegs.v = BAND(iRegs.v, 0xFF00) + val
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


function m.OamDmaWrite()
    -- Writing XX will upload 256 bytes from the CPU page XX00-XXFF to OAM.
    -- CPU is delayed for 513 cycles + 1 if on a 'put' cycle (?)
        -- Put and Get cycles alternate; initial state is random
end


function m.NewPaletteControl(regs: Regs): (Peripheral)
    local b = buffer.create(0x20)

    local function _offset(addr: u16)
        local offset = h.UnmirrorAddress(addr, 0x3F00, 0x20)
        -- offset = if offset%4 == 0 then 0 else offset
        return offset
    end

    local function _read(addr: u16)
        local offset = _offset(addr)
        
        local isGreyscale = PpuMask.GetBit("Greyscale", regs.PPUMASK)
        local color = RU8(b, offset)
        return if not isGreyscale then color else BAND(color, 0x30)
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _offset(addr), val)
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.NewVRam(_getIsMirroringVertical: () -> boolean): (Peripheral)
    local b = buffer.create(0x800)

    local function _offset(addr: u16)
        local offset
        if _getIsMirroringVertical() then
            offset = h.UnmirrorAddress(addr, 0x2000, 0x800)
        else
            if addr < 0x2800 then
                offset = h.UnmirrorAddress(addr, 0x2000, 0x400)
            else
                offset = h.UnmirrorAddress(addr, 0x2800, 0x400)
            end
        end
        return offset
    end

    local function _read(addr: u16)
        return RU8(b, _offset(addr))
    end

    local function _write(addr: u16, val: u8)
        WU8(b, _offset(addr), val)
    end

    return {
        Read = _read,
        Write = _write
    }
end


function m.MapPeripherals(
    bus: Bus,
    vram: Peripheral,
    paletteControl: Peripheral
)
    h.MapPeripheral(bus, NumberRange.new(0x2000, 0x2FFF), vram)
    h.MapPeripheral(bus, NumberRange.new(0x3F00, 0x3FFF), paletteControl)
end


function m.NewOAM()
    return buffer.create(0x40)
end


function m.New(
    _nmi: () -> (),
    _onFrameComplete: () -> (),
    _setPixelColorForCycle: (i: number, color: u8) -> ()
): PPU
    return {
        InternalState = _newInternalState(),
        ExecutionState = {Clock = 0, Cycles = 0},

        TriggerNmi = _nmi,
        OnFrameComplete = _onFrameComplete,
        SetPixelForCycle = _setPixelColorForCycle
    }
end


function _getDot(cyclesThisFrame: number)
    return cyclesThisFrame%C.DOTS_PER_SCANLINE
end


function _getScanline(cyclesThisFrame: number)
    return (cyclesThisFrame - cyclesThisFrame%C.DOTS_PER_SCANLINE)
        / C.DOTS_PER_SCANLINE
end


function _incrementVRamAddressAfterCpuAccess(regs: Regs, iRegs: InternalRegs)
    local inc = if PpuControl.Get("I", regs.PPUCTRL) == 0 then 1 else 32
    iRegs.v = BAND(iRegs.v + inc, 0x7FFF)
end


function _newInternalState(): InternalState
    return {
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
        OAM = buffer.create(0x40),
        FrameCounter = 0
    }
end


function _getPixelValue(
    patternValue: number, attributeValue: number, isSprite: boolean
)
    return (
        patternValue +
        LSHIFT(attributeValue, 2) + 
        LSHIFT(if isSprite then 1 else 0, 4)
    )
end


-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function _getTileAddressFromVRamAddress(v: u16)
    return 0x2000 + VRamAddress.Set("y", v, 0)
end

function _getAttributeAddressFromVRamAddress(v: u16)
    local attrAddr = AttributeAddress.Compose{
        ["N"] = VRamAddress.Get("N", v),
        ["AttributeOffset"] = 0b1111,
        ["Y"] = RSHIFT(VRamAddress.Get("Y", v), 2),
        ["X"] = RSHIFT(VRamAddress.Get("X", v), 2)
    }
    return 0x2000 + attrAddr
end

function _getLowPatternTableAddress(right: boolean, tileNumber: u8, row: number)
    return PatternTableAddress.Compose{
        ["FineY"] = row,
        ["BitPlane"] = 0,
        ["TileNumber"] = tileNumber,
        ["Half"] = if right then 1 else 0
    }
end

function _getHighPatternTableAddress(right, tileNumber, row)
    return PatternTableAddress.Set(
        "BitPlane", _getLowPatternTableAddress(right, tileNumber, row), 1
    )
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
            "Nametable", _getTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 2 then {
            "AttributeTable", _getAttributeAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 4 then {
            "PatternTableTileLow",
            _getLowPatternTableAddress(
                PpuControl.GetBit("B", ppuCtrl), latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        elseif backgroundFetchProgress == 6 then {
            "PatternTableTileHigh",
            _getHighPatternTableAddress(
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


function _getOffsetInAttributeByteFromVRamAddress(vramAddr: u16)
    return (
        VRamAddress.Get("X", vramAddr)%2 +
        VRamAddress.Get("Y", vramAddr)%2 * 2
    ) * 2
end

function _reloadShifters(
    latches: Latches, shifters: Shifters, vramAddr: u16
)

    local offsetInAttributeByte = (
        VRamAddress.Get("X", vramAddr)%2 +
        VRamAddress.Get("Y", vramAddr)%2 * 2
    ) * 2
    
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
    bus: Bus, iState: InternalState, dot: number, scanline: number
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
    end

    if isVisibleScanline or isPreRenderLine then
        local bgPixel: u8 = 0b00000

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
        elseif dot >= 280 and dot <= 304 then
            if isRenderingEnabled and isPreRenderLine then
                iRegs.v = _getAddressAfterTransferY(iRegs.v, iRegs.t)
            end
        elseif dot == 337 or dot == 339 then
            _fetchToLatchesBasedOnProgress(
                bus, regs.PPUCTRL, iRegs.v, latches,
                0 -- 0 progress implies nametable fetch
            )
        end

        returnedPixel = bgPixel

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

    return _getPixelValue(patternValue, attributeValue, false)
end


-- If divisible by 4, falls back to the background color.
function _getColorByPixelValue(index: number, bus: Bus)
    return bus.Read(0x3F00 + if index%4 == 0 then 0 else index)
end


function _getPatternValueFromBitPlanes(lo: u8, hi: u8, fineX: number)
    return
        (if h.GetBit(fineX, lo) then 1 else 0) +
        (if h.GetBit(fineX, hi) then 2 else 0)
end


m.GetPixelValue = _getPixelValue
m.GetTileAddressFromVRamAddress = _getTileAddressFromVRamAddress
m.GetAttributeAddressFromVRamAddress = _getAttributeAddressFromVRamAddress
m.GetLowPatternTableAddress = _getLowPatternTableAddress
m.GetHighPatternTableAddress = _getHighPatternTableAddress
m.GetColorByPixelValue = _getColorByPixelValue
m.GetPatternValueFromBitPlanes = _getPatternValueFromBitPlanes
m.GetDotInFrame = _getDot
m.GetScanlineInFrame = _getScanline
m.GetOffsetInAttributeByteFromVRamAddress = _getOffsetInAttributeByteFromVRamAddress

return m
