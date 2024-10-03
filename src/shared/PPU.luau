local T = require(script.Parent["PPU.types"])
local C = require(script.Parent["PPU.constants"])


local h = require(script.Parent.Helpers)

type u8 = T.u8
type u16 = T.u16
type Regs = T.Registers
type Bus = T.Bus
type InternalRegs = T.InternalRegisters
type ExecutionState = T.ExecutionState
type Latches = T.Latches
type Shifters = T.Shifters
type InternalState = T.InternalState
type PPU = T.PPU




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


function _getDot(cyclesThisFrame: number)
    return cyclesThisFrame%C.DOTS_PER_SCANLINE
end

function _getScanline(cyclesThisFrame: number)
    return (cyclesThisFrame - cyclesThisFrame%C.DOTS_PER_SCANLINE)
        / C.DOTS_PER_SCANLINE
end




-- If divisible by 4, falls back to the background color.
function _getPixelValue(
    patternValue: number, attributeValue: number, isSprite: boolean
)
    return if patternValue == 0 then 0 else (
        patternValue +
        LSHIFT(attributeValue, 2) + 
        LSHIFT(if isSprite then 1 else 0, 4)
    )
end



-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function _getTileAddressFromVRamAddress(v: u16)
    return C.NAMETABLE_RAM_BASE + VRamAddress.Set("y", v, 0)
end

function _getAttributeAddressFromVRamAddress(v: u16)
    local attrAddr = AttributeAddress.Compose{
        ["N"] = VRamAddress.Get("N", v),
        ["AttributeOffset"] = 0b1111,
        ["Y"] = RSHIFT(VRamAddress.Get("Y", v), 2),
        ["X"] = RSHIFT(VRamAddress.Get("X", v), 2)
    }
    return C.NAMETABLE_RAM_BASE + attrAddr
end

function _getLowPatternTableAddress(ppuCtrl: u8, tileNumber: u8, row: number)
    return PatternTableAddress.Compose{
        ["FineY"] = row,
        ["BitPlane"] = 0,
        ["TileNumber"] = tileNumber,
        ["Half"] = PpuControl.Get("B", ppuCtrl)
    }
end

function _getHighPatternTableAddress(ppuCtrl, tileNumber, row)
    return PatternTableAddress.Set(
        "BitPlane", _getLowPatternTableAddress(ppuCtrl, tileNumber, row), 1
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
        return VRamAddress.Set("X", VRamAddress.Get("X") + 1)
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
        return VRamAddress.Set("y", VRamAddress.Get("y") + 1)
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

    local latchName, addr = unpack{
        if backgroundFetchProgress == 0 then {
            "Nametable", _getTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 2 then {
            "AttributeTable", _getAttributeAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 4 then {
            "PatternTableTileLow",
            _getLowPatternTableAddress(
                ppuCtrl, latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        elseif backgroundFetchProgress == 6 then {
            "PatternTableTileHigh",
            _getHighPatternTableAddress(
                ppuCtrl, latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        else error("Invalid input")
    }

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
        LSHIFT(latches.PatternTableTileLow, 8)

    shifters.PatternHi = BAND(shifters.PatternHi, 0x00FF) +
        LSHIFT(latches.PatternTableTileHigh, 8)
end


function _clock(ppu: PPU)
    local iState = ppu.InternalState
    
    -- Perform skip cycle if at the beginning of an odd frame
    if ppu.Frame%2 == 0 and ppu.ExecutionState.Cycles == 0 and
        PpuMask.Get("b", iState.Registers.PPUMASK)
    then
        ppu.ExecutionState.Cycles += 1
    end

    local cycles = ppu.ExecutionState.Cycles
    local dot, scanline = _getDot(cycles), _getScanline(cycles)

    -- Perform main arithmetic and return pixel for this cycle
    local pixel = _cycleAndReturnPixel(
        ppu.Bus, ppu.InternalState, dot, scanline
    )
    ppu.SetPixelForCycle(cycles, _getColorByPixelValue(pixel, ppu.Bus))

    -- Perform NMI if applicable
    if dot == 1 and scanline == 241 and
        PpuControl.Get("V", iState.Registers.PPUCTRL)
    then
        ppu.TriggerNmi()
    end

    ppu.ExecutionState.Cycles = (cycles + 1)%C.CYCLES_PER_FRAME_NOSKIP
    ppu.ExecutionState.Clock += 1

    if ppu.ExecutionState.Cycles < cycles then
        ppu.OnFrameComplete()
        ppu.Frame += 1
    end
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

    local isRenderingEnabled = BOR(
        PpuMask.Get("b", regs.PPUMASK),
        PpuMask.Get("s", regs.PPUMASK)
    ) > 0

    if isPreRenderLine and dot == 1 then
        regs.PPUSTATUS = PpuStatus.Set("V", regs.PPUSTATUS, 0)
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

            if PpuMask.Get("b", regs.PPUMASK) then
                _shift(shifters)
            end

        elseif dot >= 257 and dot <= 320 then
            if isRenderingEnabled and dot == 257 then
                iRegs.v = _getAddressAfterTransferX(iRegs.v, iRegs.t)
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
        (if h.GetBit(shifters.PatternLo, fineX) then 1 else 0) +
        (if h.GetBit(shifters.PatternHi, fineX) then 2 else 0)

    local attributeValue = 
        (if h.GetBit(shifters.AttributeLo, fineX) then 1 else 0) +
        (if h.GetBit(shifters.AttributeHi, fineX) then 2 else 0)

    return _getPixelValue(patternValue, attributeValue, false)
end


function _getColorByPixelValue(index: number, bus: Bus)
    return bus.Read(C.PALETTE_RAM_BASE + index)
end


function _getPatternValueFromBitPlanes(lo: u8, hi: u8, fineX: number)
    return
        (if h.GetBit(lo, fineX) then 1 else 0) +
        (if h.GetBit(hi, fineX) then 2 else 0)
end


function m.PpuCtrlWrite(regs: Regs, val: u8, _nmi: () -> ())
    regs.PPUCTRL = val

    -- Todo: If NMI flag bit (7) is changed from 0 to 1,
        -- and PPU is in VBlank, and PPUSTATUS' vblank flag is set to 1:
        -- Immediately generate NMI
    
end


function m.PpuMaskWrite(regs: Regs, val: u8)
    regs.PPUMASK = val
end


function m.PpuStatusRead(regs: Regs, internalRegs: InternalRegs)
    -- Todo:
    -- Clear bit 7 of Ppu Ctrl
    -- Clear address latch (w)
    return regs.PPUSTATUS   -- Todo: Consider making bits 0-4 "open bus"
end


function m.OamAddrWrite(regs: Regs, val: u8)
    regs.OAMADDR  = val
end


function m.OamDataRead(regs: Regs)
    -- If in vertical or forced blanking:
        -- return the value from OAM at the address
    -- If the PPU is rendering:
        -- Return exposed OAM accesses during sprite evaluation/loading(?)
            -- Probably not important.
end


function m.OamDataWrite(regs: Regs, val: u8)
    -- If currently rendering: Ignore write.
    -- Todo: Increment OAMADDR; set OamData to val.
end


function m.PpuScrollWrite()
    -- Depending on the state of the w register:
        -- First write: X scroll
        -- Second write: Y scroll
end


function m.PpuAddrWrite()
    -- Depending on the state of the w register:
        -- First write: Upper byte
        -- Second write: Lower byte
        -- Addresses higher than 0x3FFF will be mirrored down.
end


function m.PpuDataRead()
    -- Get old contents of read buffer (Recall that reads are delayed by 1 call)
    -- Set read buffer to new contents
    -- Increment vram address by amount determined by PpuCtrl
    -- Return old contents of read buffer
end


function m.PpuDataWrite()
    -- Write val to vram address
    -- Increment vram address by amount determined by PpuCtrl
end


function m.OamDmaWrite()
    -- Writing XX will upload 256 bytes from the CPU page XX00-XXFF to OAM.
    -- CPU is delayed for 513 cycles + 1 if on a 'put' cycle (?)
        -- Put and Get cycles alternate; initial state is random
end

return m
