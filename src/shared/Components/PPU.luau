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
type PpuClosure = T.PPUClosure
type SpriteEvalResult = T.SpriteEvalResult


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

local DOTS_PER_SCANLINE = C.DOTS_PER_SCANLINE
local CYCLES_PER_FRAME_NOSKIP = C.CYCLES_PER_FRAME_NOSKIP

local m = {}

local LSHIFT, RSHIFT, BOR, BAND =
    bit32.lshift, bit32.rshift, bit32.bor, bit32.band
local RU8, WU8, RU32, WU32 = buffer.readu8, buffer.writeu8, buffer.readu32, buffer.writeu32
local _u8, _u16 = h.WrapU8, h.WrapU16

local MIN = math.min

local CYIELD = coroutine.yield

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


local PPUMASK_MASK_s = C.PPUMASK_MASKS["s" :: T.EPpuMaskFlag]
local PPUMASK_MASK_b = C.PPUMASK_MASKS["b" :: T.EPpuMaskFlag]

local PPUCTRL_MASK_V = C.PPUCTRL_MASKS["V" :: T.EPpuControlFlag]
local PPUCTRL_MASK_B = C.PPUCTRL_MASKS["B" :: T.EPpuControlFlag]

local PPUSTATUS_MASK_S = C.PPUSTATUS_MASKS["S" :: T.EPpuStatusFlag]

local PATTERN_TABLE_ADDR_MASK_BitPlane =
    C.PATTERN_TABLE_ADDR_MASKS["BitPlane" :: T.EPatternTableAddressComponent]

local VRAM_ADDR_MASK_N = C.VRAM_ADDR_MASKS["N" :: T.EVRamAddressComponent]
local VRAM_ADDR_MASK_y = C.VRAM_ADDR_MASKS["y" :: T.EVRamAddressComponent]
local VRAM_ADDR_MASK_X = C.VRAM_ADDR_MASKS["X" :: T.EVRamAddressComponent]
local VRAM_ADDR_MASK_Y = C.VRAM_ADDR_MASKS["Y" :: T.EVRamAddressComponent]

local OBJECT_ATTRIBUTE_MASK_Priority = C.OBJECT_ATTRIBUTE_MASKS["Priority" :: T.EObjectAttribute]

function m.NewClosure(
    oldState: State,
    screenBuffer: buffer,
    COLORS_U32: {[number]: number},
    _read: (u16) -> (u8),
    _triggerNmi: () -> (),
    _onFrameComplete: () -> (),
    _onScanline: () -> ()
): PpuClosure

    local OUT_STATE: State
    local co_clock = coroutine.wrap(function()

        -- Establish variables
        local reg_ppuCtrl, reg_ppuMask, reg_ppuStatus, reg_oamAddr, reg_ppuData
        local ireg_v, ireg_t, ireg_x, ireg_w
        local latch_nt, latch_attr, latch_ptLo, latch_ptHi
        local shift_attrHi, shift_attrLo, shift_patternHi, shift_patternLo
        local execution_clock, execution_cycles
        local eval_isSprite0BeingDrawn, eval_spriteFoundCount,
            eval_pixelCache, eval_spriteIndexCache, eval_isOverflow
        local oam, secondaryOam, paletteControl
        local frameCounter

        -- Initialize old state
        do
            local oldRegs = oldState.Registers
            reg_ppuCtrl, reg_ppuMask, reg_ppuStatus, reg_oamAddr, reg_ppuData =
                oldRegs.PPUCTRL, oldRegs.PPUMASK, oldRegs.PPUSTATUS,
                oldRegs.OAMADDR, oldRegs.PPUDATA
            
            local oldIRegs = oldState.InternalRegisters
            ireg_v, ireg_t, ireg_x, ireg_w = oldIRegs.v, oldIRegs.t, oldIRegs.x, oldIRegs.w

            local oldShifters = oldState.Shifters
            shift_attrHi, shift_attrLo, shift_patternHi, shift_patternLo =
                oldShifters.AttributeHi, oldShifters.AttributeLo,
                oldShifters.PatternHi, oldShifters.PatternLo
            
            local oldLatches = oldState.Latches
            latch_nt, latch_attr, latch_ptLo, latch_ptHi =
                oldLatches.Nametable, oldLatches.AttributeTable,
                oldLatches.PatternTableTileLow, oldLatches.PatternTableTileHigh
            
            local oldExecution = oldState.ExecutionState
            execution_clock, execution_cycles = oldExecution.Clock, oldExecution.Cycles

            local oldEval = oldState.SpriteEvalResult
            eval_isSprite0BeingDrawn, eval_spriteFoundCount, eval_isOverflow =
                oldEval.IsSprite0BeingDrawn, oldEval.SpriteFoundCount, oldEval.IsOverflow

            eval_pixelCache, eval_spriteIndexCache =
                table.clone(oldEval.PixelCache),
                table.clone(oldEval.SpriteIndexCache)

            frameCounter = oldState.FrameCounter

            oam, secondaryOam, paletteControl =
                h.CopyBuffer(oldState.OAM),
                h.CopyBuffer(oldState.SecondaryOAM),
                table.clone(oldState.PaletteControl)

        end


        -- State API
        do
            local mt_execution = {
                __index = function(_, k)
                    return
                        if k == "Clock" then execution_clock
                        elseif k == "Cycles" then execution_cycles
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "Clock" then execution_clock = v
                    elseif k == "Cycles" then execution_cycles = v
                    else _invalidIndex(k)
                    end
                end
            }

            local mt_registers = {
                __index = function(_, k)
                    return
                        if k == "PPUCTRL" then reg_ppuCtrl
                        elseif k == "PPUMASK" then reg_ppuMask
                        elseif k == "PPUSTATUS" then reg_ppuStatus
                        elseif k == "OAMADDR" then reg_oamAddr
                        elseif k == "PPUDATA" then reg_ppuData
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "PPUCTRL" then reg_ppuCtrl = v
                    elseif k == "PPUMASK" then reg_ppuMask = v
                    elseif k == "PPUSTATUS" then reg_ppuStatus = v
                    elseif k == "OAMADDR" then reg_oamAddr = v
                    elseif k == "PPUDATA" then reg_ppuData = v
                    else _invalidIndex(k)
                    end
                end
            }

            local mt_latches = {
                __index = function(_, k)
                    return
                        if k == "Nametable" then latch_nt
                        elseif k == "AttributeTable" then latch_attr
                        elseif k == "PatternTableLow" then latch_ptLo
                        elseif k == "PatternTableHigh" then latch_ptHi
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "Nametable" then latch_nt = v
                    elseif k == "AttributeTable" then latch_attr = v
                    elseif k == "PatternTableLow" then latch_ptLo = v
                    elseif k == "PatternTableHigh" then latch_ptHi = v
                    else _invalidIndex(k)
                    end
                end
            }

            local mt_shifters = {
                __index = function(_, k)
                    return
                        if k == "AttributeHi" then shift_attrHi
                        elseif k == "AttributeLo" then shift_attrLo
                        elseif k == "PatternHi" then shift_patternHi
                        elseif k == "PatternLo" then shift_patternLo
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "AttributeHi" then shift_attrHi = v
                    elseif k == "AttributeLo" then shift_attrLo = v
                    elseif k == "PatternHi" then shift_patternHi = v
                    elseif k == "PatternLo" then shift_patternLo = v
                    else _invalidIndex(k)
                    end
                end
            }

            local mt_iregs = {
                __index = function(_, k)
                    return
                        if k == "v" then ireg_v
                        elseif k == "t" then ireg_t
                        elseif k == "x" then ireg_x
                        elseif k == "w" then ireg_w
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "v" then ireg_v = v
                    elseif k == "t" then ireg_t = v
                    elseif k == "x" then ireg_x = v
                    elseif k == "w" then ireg_w = v
                    else _invalidIndex(k)
                    end
                end
            }

            local mt_eval = {
                __index = function(_, k)
                    return
                        if k == "SpriteFoundCount" then eval_spriteFoundCount
                        elseif k == "IsSprite0BeingDrawn" then eval_isSprite0BeingDrawn
                        elseif k == "IsOverflow" then eval_isOverflow
                        elseif k == "PixelCache" then eval_pixelCache
                        elseif k == "SpriteIndexCache" then eval_spriteIndexCache
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "SpriteFoundCount" then eval_spriteFoundCount = v
                    elseif k == "IsSprite0BeingDrawn" then eval_isSprite0BeingDrawn = v
                    elseif k == "IsOverflow" then eval_isOverflow = v
                    elseif k == "PixelCache" then eval_pixelCache = v
                    elseif k == "SpriteIndexCache" then eval_spriteIndexCache = v
                    else _invalidIndex(k)
                    end
                end
            }

            -- Buffer pointers are readonly
            local mt_state = {
                __index = function(_, k)
                    return
                        if k == "OAM" then oam
                        elseif k == "SecondaryOAM" then secondaryOam
                        elseif k == "PaletteControl" then paletteControl
                        elseif k == "FrameCounter" then frameCounter
                        else _invalidIndex(k)
                end,
                __newindex = function(_, k, v)
                    if k == "FrameCounter" then frameCounter = v
                    else _invalidIndex(k)
                    end
                end
            }

            OUT_STATE = setmetatable({
                ExecutionState = setmetatable({}, mt_execution),
                Registers = setmetatable({}, mt_registers),
                InternalRegisters = setmetatable({}, mt_iregs),
                Latches = setmetatable({}, mt_latches),
                Shifters = setmetatable({}, mt_shifters),
                SpriteEvalResult = setmetatable({}, mt_eval)
            }, mt_state) :: any
        end


        -- Utility functions
        local function _myFetchToLatchesBasedOnProgress(
            ppuCtrl: u8, vramAddr: u16, backgroundFetchProgress: number
        )
            if backgroundFetchProgress%2 == 1 then return end

            if backgroundFetchProgress == 0 then
                latch_nt = _read(_getTileAddressFromVRamAddress(vramAddr))
            elseif backgroundFetchProgress == 2 then
                latch_attr = _read(_getAttributeAddressFromVRamAddress(vramAddr))
            elseif backgroundFetchProgress == 4 then
                latch_ptLo = _read(
                    _getLowPatternTableAddress(
                        BAND(ppuCtrl, PPUCTRL_MASK_B) > 0,
                        latch_nt,
                        RSHIFT(BAND(vramAddr, VRAM_ADDR_MASK_y), 12)
                        -- _vramAddressGet("y", vramAddr)
                    )
                )
            elseif backgroundFetchProgress == 6 then
                latch_ptHi = _read(
                    _getHighPatternTableAddress(
                        BAND(ppuCtrl, PPUCTRL_MASK_B) > 0,
                        latch_nt,
                        RSHIFT(BAND(vramAddr, VRAM_ADDR_MASK_y), 12)
                    )
                )
            end
        end


        local function _myShift()
            shift_attrHi = RSHIFT(shift_attrHi, 1)
            shift_attrLo = RSHIFT(shift_attrLo, 1)
            shift_patternHi = RSHIFT(shift_patternHi, 1)
            shift_patternLo = RSHIFT(shift_patternLo, 1)
        end


        local function _myReloadShifters(vramAddr: u16)
            local offsetInAttributeByte =
                _getOffsetInAttributeByteFromVRamAddress(vramAddr)    

            shift_attrLo = BAND(shift_attrLo, 0x00FF) +
                LSHIFT(
                    (BAND(latch_attr, LSHIFT(1, offsetInAttributeByte)) > 0)
                        and 0xFF
                        or 0x00,
                    8
                )

            shift_attrHi = BAND(shift_attrHi, 0x00FF) +
                LSHIFT(
                    (BAND(latch_attr, LSHIFT(1, offsetInAttributeByte + 1)) > 0)
                        and 0xFF
                        or 0x00,
                    8
                )

            shift_patternLo = BAND(shift_patternLo, 0x00FF) +
                LSHIFT(_hReverseBitOrderU8(latch_ptLo), 8)

            shift_patternHi = BAND(shift_patternHi, 0x00FF) +
                LSHIFT(_hReverseBitOrderU8(latch_ptHi), 8)
        end


        local coroutine_cyclesRemaining = 0

        --[[
            The following state is not persistent between cycles, and is hoisted from the loop
            for optimization purposes.
        ]]

        -- Main clock function
        local dot, scanline, isRenderingEnabled
        local returnedPixel, isVisibleScanline, isPreRenderLine
        local color, oldCycles
        
        -- Rendering state
        local bgPixel, spriteIndex, spritePixel, fetchProgress
        
        -- Sprite rendering state
        local isBgTransparent
        local isSpriteTransparent

        local spriteAttributes
        local spritePriority
        local shouldSpriteBeRendered

        while true do
            coroutine_cyclesRemaining = coroutine_cyclesRemaining > 0
                and coroutine_cyclesRemaining - 1
                or CYIELD() - 1

            -- Perform skip cycle if at the beginning of an odd frame & BG set
            if frameCounter%2 == 0 and execution_cycles == 0 and
                BAND(reg_ppuMask, PPUMASK_MASK_b) > 0
            then
                execution_cycles += 1
            end


            -- Establish variables
            dot, scanline =
                execution_cycles%DOTS_PER_SCANLINE,
                (execution_cycles - execution_cycles%DOTS_PER_SCANLINE)/DOTS_PER_SCANLINE

            isRenderingEnabled = BAND(reg_ppuMask, PPUMASK_MASK_b) ~= 0 or
                BAND(reg_ppuMask, PPUMASK_MASK_s) ~= 0


            -- Cycle and return pixel
            returnedPixel = 0b00000
            isVisibleScanline = scanline >= 0 and scanline <= 239
            isPreRenderLine = scanline == 261


            -- At beginning of frame; clear status
            if isPreRenderLine and dot == 1 then
                reg_ppuStatus = _ppuStatusSet("V", reg_ppuStatus, 0)
                reg_ppuStatus = _ppuStatusSet("S", reg_ppuStatus, 0)
                reg_ppuStatus = _ppuStatusSet("O", reg_ppuStatus, 0)
            end


            -- If we need to calculate the pixel, do so
            if isVisibleScanline or isPreRenderLine then
                bgPixel = 0b00000
                if eval_spriteFoundCount > 0 then
                    spriteIndex, spritePixel =
                        eval_spriteIndexCache[dot + 1] or -1,
                        eval_pixelCache[dot + 1] or 0x00
                    spriteIndex = spriteIndex >= 0 and spriteIndex or nil
                else
                    spriteIndex, spritePixel = nil, 0b00000
                end

                -- Fetch cycles
                if (dot >= 1 and dot <= 256) or (dot >= 321 and dot <= 336) then

                    fetchProgress = (dot - 1)%8
                    _myFetchToLatchesBasedOnProgress(reg_ppuCtrl, ireg_v, fetchProgress)

                    if fetchProgress == 7 then
                        _myReloadShifters(ireg_v)

                        if isRenderingEnabled then
                            ireg_v = _getAddressAfterIncrementHorizontal(ireg_v)
                        end

                        if isRenderingEnabled and dot == 256 then
                            ireg_v = _getAddressAfterIncrementVertical(ireg_v)
                        end
                    end


                    bgPixel = (
                        (if BAND(shift_patternLo, LSHIFT(1, ireg_x)) > 0 then 1 else 0) +
                        (if BAND(shift_patternHi, LSHIFT(1, ireg_x)) > 0 then 2 else 0) +
                        (if BAND(shift_attrLo, LSHIFT(1, ireg_x)) > 0 then 4 else 0) +
                        (if BAND(shift_attrHi, LSHIFT(1, ireg_x)) > 0 then 8 else 0)
                    )

                    if _ppuMaskGetBit("b", reg_ppuMask) then
                        _myShift()
                    end

                elseif dot >= 257 and dot <= 320 then
                    if isRenderingEnabled and dot == 257 then
                        ireg_v = _getAddressAfterTransferX(ireg_v, ireg_t)
                    end
                    if isRenderingEnabled and dot >= 280 and dot <= 304 then
                        if isPreRenderLine then
                            ireg_v = _getAddressAfterTransferY(ireg_v, ireg_t)
                        end
                    end

                    if isRenderingEnabled then
                        reg_oamAddr = 0x00
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
                        _initializeSecondaryOAM(secondaryOam)
                        _putDrawnObjectsInSecondaryOam_Out_EvalResult(
                            _read,
                            scanline + 1,
                            _ppuControlGetBit("H", reg_ppuCtrl),
                            _ppuControlGetBit("S", reg_ppuCtrl),
                            oam,
                            secondaryOam,
                            OUT_STATE.SpriteEvalResult
                        )

                        -- Overflow flag.
                        -- Technically this flag should only be set once per frame.
                        -- If bugs are apparent, make sure to change this.
                        if not _ppuStatusGetBit("O", reg_ppuStatus) then
                            reg_ppuStatus = _ppuStatusSetBit("O", reg_ppuStatus, eval_isOverflow)
                        end
                    end
                    
                elseif dot == 337 or dot == 339 then
                    _myFetchToLatchesBasedOnProgress(
                        reg_ppuCtrl, ireg_v, 0 -- 0 progress implies nametable fetch
                    )
                end

                -- Get pixel to return
                if spriteIndex then
                    isBgTransparent = BAND(bgPixel, 0b11) == 0
                    isSpriteTransparent = BAND(spritePixel, 0b11) == 0

                    spriteAttributes = RU8(secondaryOam, spriteIndex*4 + 2)
                    spritePriority = BAND(spriteAttributes, OBJECT_ATTRIBUTE_MASK_Priority) > 0
                    shouldSpriteBeRendered = _shouldSpriteBeRendered(
                        isBgTransparent, isSpriteTransparent, spritePriority
                    )

                    -- Technically this flag should only be set once per frame.
                    -- If bugs are apparent, make sure to change this.
                    if BAND(reg_ppuStatus, PPUSTATUS_MASK_S) == 0 then
                        local isSprite0Hit = eval_isSprite0BeingDrawn
                            and spriteIndex == 0
                            and not (isBgTransparent or isSpriteTransparent)

                        reg_ppuStatus = BOR(reg_ppuStatus, isSprite0Hit and PPUSTATUS_MASK_S or 0)
                    end
                    
                    returnedPixel = shouldSpriteBeRendered
                        and spritePixel
                        or bgPixel
                else
                    returnedPixel = bgPixel
                end

            elseif scanline >= 241 and scanline <= 261 then
                if scanline == 241 and dot == 1 then
                    reg_ppuStatus = _ppuStatusSet("V", reg_ppuStatus, 1)
                end
            end


            -- Write to screen
            color = paletteControl[1 + (returnedPixel%4 == 0 and 0 or returnedPixel)]
            if dot < 256 and scanline < 240 then
                WU32(
                    screenBuffer,
                    (dot + scanline*256)*4,
                    COLORS_U32[color] or COLORS_U32[0x28]
                )
            end


            -- Perform NMI if applicable
            if dot == 1 and scanline == 241 and BAND(PPUCTRL_MASK_V, reg_ppuCtrl) > 0 then
                _triggerNmi()
            end

            -- Scanline callback for MMC3 IRQ
            if dot == 260 and scanline < 240 and isRenderingEnabled then
                _onScanline()
            end


            oldCycles = execution_cycles
            execution_cycles = (execution_cycles + 1)%CYCLES_PER_FRAME_NOSKIP
            execution_clock += 1

            if execution_cycles < oldCycles then
                _onFrameComplete()
                frameCounter += 1
            end
        end

    end)

    local function _updateRead(_newRead: (u16) -> (u8))
        _read = _newRead
    end

    -- Initialization cycle
    co_clock()

    return {
        State = OUT_STATE,
        Clock = co_clock,
        UpdateRead = _updateRead
    }
end

function _invalidIndex(k)
    error(`Invalid index '{k}'`)
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
        SpriteEvalResult = {
            IsSprite0BeingDrawn = false,
            SpriteFoundCount = 0,
            IsOverflow = false,
            PixelCache = table.create(DOTS_PER_SCANLINE, 0x00),
            SpriteIndexCache = table.create(DOTS_PER_SCANLINE, -1)
        },
        OAM = buffer.create(0x100),
        SecondaryOAM = buffer.create(0x40),
        PaletteControl = table.create(0x20, 0x00),
        FrameCounter = 0
    }
end


function m.CopyState(state: State): State
    return {
        ExecutionState = {
            Cycles = state.ExecutionState.Cycles,
            Clock = state.ExecutionState.Clock
        },
        Registers = {
            PPUCTRL = state.Registers.PPUCTRL,
            PPUMASK = state.Registers.PPUMASK,
            PPUSTATUS = state.Registers.PPUSTATUS,
            OAMADDR = state.Registers.OAMADDR,
            PPUDATA = state.Registers.PPUDATA
        },
        InternalRegisters = {
            v = state.InternalRegisters.v, t = state.InternalRegisters.t,
            x = state.InternalRegisters.x, w = state.InternalRegisters.w
        },
        Latches = {
            Nametable = state.Latches.Nametable,
            AttributeTable = state.Latches.AttributeTable,
            PatternTableTileLow = state.Latches.PatternTableTileLow,
            PatternTableTileHigh = state.Latches.PatternTableTileHigh
        },
        Shifters = {
            AttributeHi = state.Shifters.AttributeHi,
            AttributeLo = state.Shifters.AttributeLo,
            PatternHi = state.Shifters.PatternHi,
            PatternLo = state.Shifters.PatternLo
        },
        SpriteEvalResult = {
            IsSprite0BeingDrawn = state.SpriteEvalResult.IsSprite0BeingDrawn,
            SpriteFoundCount = state.SpriteEvalResult.SpriteFoundCount,
            IsOverflow = state.SpriteEvalResult.IsOverflow,
            PixelCache = state.SpriteEvalResult.PixelCache,
            SpriteIndexCache = state.SpriteEvalResult.SpriteIndexCache
        },

        OAM = h.CopyBuffer(state.OAM),
        SecondaryOAM = h.CopyBuffer(state.SecondaryOAM),
        PaletteControl = table.clone(state.PaletteControl),

        FrameCounter = state.FrameCounter,
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

local VRAM_ADDR_MASK_y = C.VRAM_ADDR_MASKS["y" :: T.EVRamAddressComponent]
local BNOT = bit32.bnot

-- Source: https://www.nesdev.org/wiki/PPU_scrolling#Tile_and_attribute_fetching
function _getTileAddressFromVRamAddress(v: u16)
    -- return 0x2000 + _vramAddressSet("y", v, 0)
    return 0x2000 + BAND(v, BNOT(VRAM_ADDR_MASK_y))
end


function _getAttributeAddressFromVRamAddress(v: u16)
    
    return 0x2000
        + BAND(v, VRAM_ADDR_MASK_N) -- Nametable select
        + 0b001111000000            -- AttributeOffset (The attribute offset within the nametable)
        + RSHIFT(BAND(
            0b000001110000000,  -- High 3 bits of the Y component
            v
        ), 4)
        + RSHIFT(BAND(
            0b00000000011100,   -- High 3 bits of the X component
            v
        ), 2)
end


function _getLowPatternTableAddress(right: boolean, tileNumber: u8, row: number)
    return row
        + tileNumber*2^4
        + (if right then 1 else 0)*2^12
end


function _getHighPatternTableAddress(right, tileNumber, row)
    -- return _patternTableAddressSet(
    --     "BitPlane", _getLowPatternTableAddress(right, tileNumber, row), 1
    -- )
    return BOR(
        _getLowPatternTableAddress(right, tileNumber, row),
        PATTERN_TABLE_ADDR_MASK_BitPlane
    )
end



function _getPatternValueFromBitPlanes(lo: u8, hi: u8, fineX: number)
    return
        (if _hGetBit(fineX, lo) then 1 else 0) +
        (if _hGetBit(fineX, hi) then 2 else 0)
end


function _getOffsetInAttributeByteFromVRamAddress(vramAddr: u16)
    return (
        (BAND(vramAddr, VRAM_ADDR_MASK_X)%4 >= 2 and 1 or 0) +
        (RSHIFT(BAND(vramAddr, VRAM_ADDR_MASK_Y), 5)%4 >= 2 and 2 or 0)
    ) * 2
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



function _putDrawnObjectsInSecondaryOam_Out_EvalResult(
    _read: (u16) -> u8,
    scanline: number,
    spriteSizeFlag: boolean,
    spriteBankFlag: boolean,
    oam: buffer,
    secondaryOam: buffer,
    spriteEvalResult: SpriteEvalResult
)
    local spriteFoundCount = 0
    local spriteSize = if spriteSizeFlag then 16 else 8
    local isSprite0BeingDrawn = false
    local pixelCache, spriteIndexCache =
        spriteEvalResult.PixelCache,
        spriteEvalResult.SpriteIndexCache
    
    for i = 1, DOTS_PER_SCANLINE do
        pixelCache[i] = 0x00
        spriteIndexCache[i] = -1
    end
    

    for i = 0, 63 do
        local y = RU8(oam, i * 4 + 0) + 1 -- Plus one due to internal offset

        if not (y <= scanline and y + spriteSize > scanline and y < 0xEF) then continue end

        local tileNumber, attr, x =
            RU8(oam, i * 4 + 1),
            RU8(oam, i * 4 + 2),
            RU8(oam, i * 4 + 3)

        isSprite0BeingDrawn = isSprite0BeingDrawn or i == 0
        
        WU32(
            secondaryOam,
            spriteFoundCount * 4,
            RU32(oam, i * 4)
        )

        -- Compute pixel information
        local row = scanline - y
        local isRightBank, tileIndex

        if spriteSizeFlag then
            isRightBank = BAND(0x01, tileNumber) ~= 0
            tileIndex = RSHIFT(tileNumber, 1)
        else
            isRightBank = spriteBankFlag
            tileIndex = tileNumber
        end
        row = if _objectAttributeGetBit("FlipY", attr)
            then 7 - row
            else row
        
        local lowPatternTableAddress = row
            + tileIndex*2^4
            + (if isRightBank then 0x1000 else 0)
        
        local lowPatternTableValue, highPatternTableValue =
            _read(lowPatternTableAddress),
            _read(BOR(lowPatternTableAddress, PATTERN_TABLE_ADDR_MASK_BitPlane))
        
        for dot = x, x + 8 do
            if spriteIndexCache[dot + 1] >= 0 then continue end
            -- Fill cache with pixels and index
            local pixel = _spritePixelFromProperties(
                dot, attr, x,
                lowPatternTableValue,
                highPatternTableValue
            )

            local isSpriteTransparent = BAND(pixel, 0b11) == 0
            if isSpriteTransparent then continue end
            spriteIndexCache[dot + 1] = spriteFoundCount
            pixelCache[dot + 1] = pixel
        end

        spriteFoundCount += 1
        if spriteFoundCount > 7 then break end
    end

    spriteEvalResult.SpriteFoundCount = MIN(spriteFoundCount, 7)
    spriteEvalResult.IsSprite0BeingDrawn = isSprite0BeingDrawn
    spriteEvalResult.IsOverflow = spriteFoundCount > 7
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
    if BAND(vramAddr, VRAM_ADDR_MASK_X) == 31 then
        -- local n = _vramAddressGet("N", vramAddr)
        -- vramAddr = _vramAddressSet("X", vramAddr, 0)
        vramAddr = BAND(vramAddr, BNOT(VRAM_ADDR_MASK_X))

        -- Flip X nametable bit
        -- return _vramAddressSet(
        --     "N", vramAddr,
        --     _hSetBit(0, n, not _hGetBit(0, n))
        -- )
        return BXOR(vramAddr, 0b010000000000)
    else
        -- return _vramAddressSet("X", vramAddr, _vramAddressGet("X", vramAddr) + 1)
        return vramAddr + 1
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


function _isRenderingEnabled(ppuMask: u8)
    return BAND(ppuMask, PPUMASK_MASK_b) ~= 0 or
        BAND(ppuMask, PPUMASK_MASK_s) ~= 0
end


function _isInVBlank(scanline: number)
    return scanline < 261 and scanline >= 240
end


-- If divisible by 4, falls back to the background color.
function _getColorByPixelValue(index: number, _read: (u16) -> (u8))
    return _read(0x3F00 + if index%4 == 0 then 0 else index)
end


function _spritePixelFromProperties(
    dot: number,
    spriteAttributes: u8,
    spriteX: u8,
    lowPatternValue: u8,
    highPatternValue: u8
): u8
    local column = dot - spriteX

    column = if BAND(0b01000000, spriteAttributes) ~= 0
        then column
        else 7 - column

    local patternValue = 
        (if BAND(lowPatternValue, LSHIFT(1, column)) > 0 then 1 else 0) +
        (if BAND(highPatternValue, LSHIFT(1, column)) > 0 then 2 else 0)
    

    return (
        patternValue +
        LSHIFT(BAND(0x03, spriteAttributes), 2) + 
        0x10
    )
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
        isRightBank = BAND(0x01, spriteTileNumber) ~= 0
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
