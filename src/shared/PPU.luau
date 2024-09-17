local T = require(script.Parent["PPU.types"])
local C = require(script.Parent["PPU.constants"])

type u8 = T.u8
type u16 = T.u16
type Regs = T.Registers
type InternalRegs = T.InternalRegisters

local m = {}


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
