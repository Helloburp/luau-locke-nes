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


local VRamAddress, AttributeAddress, PatternTableAddress, PpuControl =
    C.BITFIELD_UTIL.VRamAddress,
    C.BITFIELD_UTIL.AttributeAddress,
    C.BITFIELD_UTIL.PatternTableAddress,
    C.BITFIELD_UTIL.PpuControl


local m = {}

local LSHIFT, BOR, BAND = bit32.lshift, bit32.bor, bit32.band
local RU8, WU8 = buffer.readu8, buffer.writeu8


function _getDot(cyclesThisFrame: number)
    return cyclesThisFrame%C.DOTS_PER_SCANLINE
end

function _getScanline(cyclesThisFrame: number)
    return (cyclesThisFrame - cyclesThisFrame%C.DOTS_PER_SCANLINE)
        / C.DOTS_PER_SCANLINE
end


-- If divisible by 4, falls back to the background color.
function _getPaletteRamIndex(
    pixelValue: number, paletteNumber: number, isSprite: boolean
)
    return if pixelValue == 0 then 0 else pixelValue
        + LSHIFT(paletteNumber, 2)
        + LSHIFT(if isSprite then 1 else 0, 4)
end


function _isOddFrame(clock: number)
    return clock%(C.DOTS_PER_FRAME * 2) >= C.DOTS_PER_FRAME
end


-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function _getTileAddressFromVRamAddress(v: u16)
    return C.NAMETABLE_RAM_BASE + VRamAddress.Set("y", v, 0)
end

function _getAttributeAddressFromVRamAddress(v: u16)
    local attrAddr = AttributeAddress.Compose{
        ["N"] = VRamAddress.Get("N", v),
        ["AttributeOffset"] = 0b1111,
        ["Y"] = BAND(VRamAddress.Get("Y", v), 0b11100),
        ["X"] = BAND(VRamAddress.Get("X", v), 0b11100)
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


function _increaseHorizontal()

end

function _increaseVertical()
    
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
    if backgroundFetchProgress%2 == 0 then return end

    local latchName, addr = unpack{
        if backgroundFetchProgress == 1 then {
            "Nametable", _getTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 3 then {
            "AttributeTable", _getTileAddressFromVRamAddress(vramAddr)
        }
        elseif backgroundFetchProgress == 5 then {
            "PatternTableTileLow",
            _getLowPatternTableAddress(
                ppuCtrl, latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        elseif backgroundFetchProgress == 7 then {
            "PatternTableTileHigh",
            _getHighPatternTableAddress(
                ppuCtrl, latches.Nametable, VRamAddress.Get("y", vramAddr)
            )
        }
        else error("Invalid input")
    }

    latches[latchName] = bus.Read(addr)
end


function _shift()
end


--[[
    Takes the amount of cycles that have occured in the current frame.

    Returns whether the last dot of the line is skipped,
    specifically in the case of scanline 0
]]
function _cycleAndReturnDotSkip(
    bus: Bus, regs: Regs, iRegs: InternalRegs,
    latches: Latches, cyclesThisFrame: number
): boolean
    local dot, scanline =
        _getDot(cyclesThisFrame)
        _getScanline(cyclesThisFrame)
    
    local isVisibleScanline = scanline >= 0 and scanline <= 240
    local isPreRenderLine = scanline == 261

    if isVisibleScanline or isPreRenderLine then

        --[[
            Variables
        ]]
        
        --[[
            In OLC's code, the fetch range starts at 2 and ends at 337.
            I think this is a bug. The NT fetch at 337 is labeled as unused,
            and his implementation skips the first instance where an NT
            fetch would occur.

            I think the confusion arose because the shifters only
            begin working on cycle 2, and OLC's logic shifts every time
            a fetch is considered.
        ]]
        local isFetchDot =
            (dot >= 1 and dot <= 256) or
            (dot >= 321 and dot <= 336)
        
        local shouldFetchOccur = isFetchDot and dot%2 == 0

        local shouldReloadShiftersFromDot =
            (dot - 1)%8 == 0 and (
                (dot >= 9 and dot <= 257) or
                (dot >= 329 and dot <= 337)
            )

        local isShiftDot =
            (dot >= 2 and dot <= 257) or
            (dot >= 321 and dot <= 337)


        --[[
            Behavior
        ]]

        if scanline == 0 then
            --[[
                During dots 280-304, vertical scroll bits are reloaded
                if rendering is enabled.
            ]]
            --[[
                If on an odd frame, and rendering is enabled,
                the last dot (340) is skipped.
            ]]
        end

        if shouldFetchOccur then
            local fetchProgress = (dot - 1)%8
            _fetchToLatchesBasedOnProgress(
                bus, regs.PPUCTRL, iRegs.v, latches,
                fetchProgress
            )
        end


        if shouldReloadShiftersFromDot then
            -- Reload shifters
        end
        --[[
            Sprite 0 hit cannot be raised until at least cycle 2,
            which is when the shifters start working
        ]]
        
        if isShiftDot then
            _shift()
        end
        --[[
            Dots 257-320:
            Data for sprites on next scanline are fetched. (2 dots each)
            In order:
            - 2 garbage nametable bytes (Occur to share circuitry w/ bg)
            - Pattern table tile low
            - Pattern table tile high
        ]]
        --[[
            Dots 337-340:
            Nametable bytes are fetched for unknown reason.
        ]]
    elseif scanline == 241 then
        -- Idle
    elseif scanline > 241 then
        --[[ Dot 1:
            VBlank flag is set.
            VBlank NMI occurs.
            No memory accesses are made.
        ]]

    end

    return false
end


function _getColorByPaletteRamIndex(index: number, bus: Bus)
    return bus.Read(C.PALETTE_RAM_BASE + index)
end


-- Pixel is the offset.
function _getPixelValueFromBitPlanes(lo: u8, hi: u8, pixel: number)
    return if h.GetBit(lo, pixel) then 1 else 0 +
        if h.GetBit(hi, pixel) then 2 else 0
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
