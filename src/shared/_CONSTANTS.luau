
local LSHIFT = bit32.lshift


local m = {
	StatusFlagOrder = {"C", "Z", "I", "D", "B", "U", "V", "N"},
	SP_BASE		    = 0x0100,
	SP_RESET		= 0x00FD,
	PC_RES			= 0xFFFC,
	PC_IRQ			= 0xFFFE,
	PC_NMI			= 0xFFFA,
	
	StatusFlagMasks = {
		C = LSHIFT(1, 0),	-- Carry
		Z = LSHIFT(1, 1),	-- Zero
		I = LSHIFT(1, 2),	-- Disable Interrupts
		D = LSHIFT(1, 3),	-- Decimal Mode (Unemulated)
		B = LSHIFT(1, 4),	-- Break
		U = LSHIFT(1, 5),	-- Unused
		V = LSHIFT(1, 6),	-- Overflow
		N = LSHIFT(1, 7),	-- Negative
	}
}

return m