local T = require(script.Parent["PPU.types"])
local C = require(script.Parent["PPU.constants"])

local h = require(script.Parent.Helpers)

type u8 = T.u8
type u16 = T.u16
type Regs = T.Registers
type Bus = T.Bus
type InternalRegs = T.InternalRegisters
type ExecutionState = T.ExecutionState

local VRamAddress = h.NewBitfieldFunctions(C.VRAM_ADDR_MASKS) :: T.VRamAddressBitfieldFunctions
local PpuControl = h.NewBitfieldFunctions(C.PPUCTRL_MASKS) :: T.PpuControlBitfieldFunctions
local PpuMask = h.NewBitfieldFunctions(C.PPUMASK_MASKS) :: T.PpuMaskBitfieldFunctions
local PpuStatus = h.NewBitfieldFunctions(C.PPUSTATUS_MASKS) :: T.PpuStatusBitfieldFunctions


local m = {}

local LSHIFT = bit32.lshift
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


function _fetchNametableEntry()

end

function _fetchAttributeTableEntry()

end

function _fetchLoPatternByte()

end

function _fetchHiPatternByte()

end


function _increaseHorizontal()

end

function _increaseVertical()
    
end


--[[
    Takes the amount of cycles that have occured in the current frame.

    Returns whether the last dot of the line is skipped,
    specifically in the case of scanline 0
]]
function _cycleAndReturnDotSkip(cyclesThisFrame: number): boolean
    local dot, scanline =
        _getDot(cyclesThisFrame)
        _getScanline(cyclesThisFrame)

    if scanline == 0 then -- Pre-render scanline
        --[[
            Make memory accesses it would for a regular scanline.
            (Fill the shift registers for the first 2 tiles.)
        ]]
        --[[
            During dots 280-304, vertical scroll bits are reloaded
            if rendering is enabled.
        ]]
        --[[
            If on an odd frame, and rendering is enabled,
            the last dot (340) is skipped.
        ]]
    elseif scanline > 0 and scanline <= 240 then -- Visible scanlines
        -- If dot 0, idle.
        --[[
            Dots 1-256:
            Data for each tile is fetched. Memory accesses take 2 dots each.
            In order:
            - Nametable byte
            - Attribute table byte
            - Pattern table tile low
            - Pattern table tile high (+8 bytes from table tile low)

            Every 8 cycles, feed these bytes to the internal shift registers.
        ]]
        --[[
            Sprite 0 hit cannot be raised until at least cycle 2,
            which is when the shifters start working
        ]]
        --[[
            Dots 257-320:
            Data for sprites on next scanline are fetched. (2 dots each)
            In order:
            - 2 garbage nametable bytes (Occur to share circuitry w/ bg)
            - Pattern table tile low
            - Pattern table tile high
        ]]
        --[[
            Dots 321-336:
            First two tiles for the next scanline are fetched and loaded
            into shift registers. Follows same order.
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
