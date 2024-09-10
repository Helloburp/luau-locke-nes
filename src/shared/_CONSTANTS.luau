local T = require(script.Parent._TYPES)

local LSHIFT = bit32.lshift


-- The following lookup was generated with scripts/InstructionStringManip.luau
-- *Please* save your sanity and do not edit this manually...

-- {EInstructionName, EInstruction, EAddressingMode, cycles}
local OPCODE_LOOKUP = {
	{"BRK","BRK","IMM",7}, {"ORA","ORA","IZX",6}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",3}, {"ORA","ORA","ZP0",3}, {"ASL","ASL","ZP0",5}, {"???","XXX","IMP",5}, {"PHP","PHP","IMP",3}, {"ORA","ORA","IMM",2}, {"ASL","ASL","IMP",2}, {"???","XXX","IMP",2}, {"???","NOP","IMP",4}, {"ORA","ORA","ABS",4}, {"ASL","ASL","ABS",6}, {"???","XXX","IMP",6}, 
	{"BPL","BPL","REL",2}, {"ORA","ORA","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"ORA","ORA","ZPX",4}, {"ASL","ASL","ZPX",6}, {"???","XXX","IMP",6}, {"CLC","CLC","IMP",2}, {"ORA","ORA","ABY",4}, {"???","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"ORA","ORA","ABX",4}, {"ASL","ASL","ABX",7}, {"???","XXX","IMP",7}, 
	{"JSR","JSR","ABS",6}, {"AND","AND","IZX",6}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"BIT","BIT","ZP0",3}, {"AND","AND","ZP0",3}, {"ROL","ROL","ZP0",5}, {"???","XXX","IMP",5}, {"PLP","PLP","IMP",4}, {"AND","AND","IMM",2}, {"ROL","ROL","IMP",2}, {"???","XXX","IMP",2}, {"BIT","BIT","ABS",4}, {"AND","AND","ABS",4}, {"ROL","ROL","ABS",6}, {"???","XXX","IMP",6}, 
	{"BMI","BMI","REL",2}, {"AND","AND","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"AND","AND","ZPX",4}, {"ROL","ROL","ZPX",6}, {"???","XXX","IMP",6}, {"SEC","SEC","IMP",2}, {"AND","AND","ABY",4}, {"???","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"AND","AND","ABX",4}, {"ROL","ROL","ABX",7}, {"???","XXX","IMP",7}, 
	{"RTI","RTI","IMP",6}, {"EOR","EOR","IZX",6}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",3}, {"EOR","EOR","ZP0",3}, {"LSR","LSR","ZP0",5}, {"???","XXX","IMP",5}, {"PHA","PHA","IMP",3}, {"EOR","EOR","IMM",2}, {"LSR","LSR","IMP",2}, {"???","XXX","IMP",2}, {"JMP","JMP","ABS",3}, {"EOR","EOR","ABS",4}, {"LSR","LSR","ABS",6}, {"???","XXX","IMP",6}, 
	{"BVC","BVC","REL",2}, {"EOR","EOR","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"EOR","EOR","ZPX",4}, {"LSR","LSR","ZPX",6}, {"???","XXX","IMP",6}, {"CLI","CLI","IMP",2}, {"EOR","EOR","ABY",4}, {"???","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"EOR","EOR","ABX",4}, {"LSR","LSR","ABX",7}, {"???","XXX","IMP",7}, 
	{"RTS","RTS","IMP",6}, {"ADC","ADC","IZX",6}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",3}, {"ADC","ADC","ZP0",3}, {"ROR","ROR","ZP0",5}, {"???","XXX","IMP",5}, {"PLA","PLA","IMP",4}, {"ADC","ADC","IMM",2}, {"ROR","ROR","IMP",2}, {"???","XXX","IMP",2}, {"JMP","JMP","IND",5}, {"ADC","ADC","ABS",4}, {"ROR","ROR","ABS",6}, {"???","XXX","IMP",6}, 
	{"BVS","BVS","REL",2}, {"ADC","ADC","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"ADC","ADC","ZPX",4}, {"ROR","ROR","ZPX",6}, {"???","XXX","IMP",6}, {"SEI","SEI","IMP",2}, {"ADC","ADC","ABY",4}, {"???","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"ADC","ADC","ABX",4}, {"ROR","ROR","ABX",7}, {"???","XXX","IMP",7}, 
	{"???","NOP","IMP",2}, {"STA","STA","IZX",6}, {"???","NOP","IMP",2}, {"???","XXX","IMP",6}, {"STY","STY","ZP0",3}, {"STA","STA","ZP0",3}, {"STX","STX","ZP0",3}, {"???","XXX","IMP",3}, {"DEY","DEY","IMP",2}, {"???","NOP","IMP",2}, {"TXA","TXA","IMP",2}, {"???","XXX","IMP",2}, {"STY","STY","ABS",4}, {"STA","STA","ABS",4}, {"STX","STX","ABS",4}, {"???","XXX","IMP",4}, 
	{"BCC","BCC","REL",2}, {"STA","STA","IZY",6}, {"???","XXX","IMP",2}, {"???","XXX","IMP",6}, {"STY","STY","ZPX",4}, {"STA","STA","ZPX",4}, {"STX","STX","ZPY",4}, {"???","XXX","IMP",4}, {"TYA","TYA","IMP",2}, {"STA","STA","ABY",5}, {"TXS","TXS","IMP",2}, {"???","XXX","IMP",5}, {"???","NOP","IMP",5}, {"STA","STA","ABX",5}, {"???","XXX","IMP",5}, {"???","XXX","IMP",5}, 
	{"LDY","LDY","IMM",2}, {"LDA","LDA","IZX",6}, {"LDX","LDX","IMM",2}, {"???","XXX","IMP",6}, {"LDY","LDY","ZP0",3}, {"LDA","LDA","ZP0",3}, {"LDX","LDX","ZP0",3}, {"???","XXX","IMP",3}, {"TAY","TAY","IMP",2}, {"LDA","LDA","IMM",2}, {"TAX","TAX","IMP",2}, {"???","XXX","IMP",2}, {"LDY","LDY","ABS",4}, {"LDA","LDA","ABS",4}, {"LDX","LDX","ABS",4}, {"???","XXX","IMP",4}, 
	{"BCS","BCS","REL",2}, {"LDA","LDA","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",5}, {"LDY","LDY","ZPX",4}, {"LDA","LDA","ZPX",4}, {"LDX","LDX","ZPY",4}, {"???","XXX","IMP",4}, {"CLV","CLV","IMP",2}, {"LDA","LDA","ABY",4}, {"TSX","TSX","IMP",2}, {"???","XXX","IMP",4}, {"LDY","LDY","ABX",4}, {"LDA","LDA","ABX",4}, {"LDX","LDX","ABY",4}, {"???","XXX","IMP",4}, 
	{"CPY","CPY","IMM",2}, {"CMP","CMP","IZX",6}, {"???","NOP","IMP",2}, {"???","XXX","IMP",8}, {"CPY","CPY","ZP0",3}, {"CMP","CMP","ZP0",3}, {"DEC","DEC","ZP0",5}, {"???","XXX","IMP",5}, {"INY","INY","IMP",2}, {"CMP","CMP","IMM",2}, {"DEX","DEX","IMP",2}, {"???","XXX","IMP",2}, {"CPY","CPY","ABS",4}, {"CMP","CMP","ABS",4}, {"DEC","DEC","ABS",6}, {"???","XXX","IMP",6}, 
	{"BNE","BNE","REL",2}, {"CMP","CMP","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"CMP","CMP","ZPX",4}, {"DEC","DEC","ZPX",6}, {"???","XXX","IMP",6}, {"CLD","CLD","IMP",2}, {"CMP","CMP","ABY",4}, {"NOP","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"CMP","CMP","ABX",4}, {"DEC","DEC","ABX",7}, {"???","XXX","IMP",7}, 
	{"CPX","CPX","IMM",2}, {"SBC","SBC","IZX",6}, {"???","NOP","IMP",2}, {"???","XXX","IMP",8}, {"CPX","CPX","ZP0",3}, {"SBC","SBC","ZP0",3}, {"INC","INC","ZP0",5}, {"???","XXX","IMP",5}, {"INX","INX","IMP",2}, {"SBC","SBC","IMM",2}, {"NOP","NOP","IMP",2}, {"???","SBC","IMP",2}, {"CPX","CPX","ABS",4}, {"SBC","SBC","ABS",4}, {"INC","INC","ABS",6}, {"???","XXX","IMP",6}, 
	{"BEQ","BEQ","REL",2}, {"SBC","SBC","IZY",5}, {"???","XXX","IMP",2}, {"???","XXX","IMP",8}, {"???","NOP","IMP",4}, {"SBC","SBC","ZPX",4}, {"INC","INC","ZPX",6}, {"???","XXX","IMP",6}, {"SED","SED","IMP",2}, {"SBC","SBC","ABY",4}, {"NOP","NOP","IMP",2}, {"???","XXX","IMP",7}, {"???","NOP","IMP",4}, {"SBC","SBC","ABX",4}, {"INC","INC","ABX",7}, {"???","XXX","IMP",7},
}

-- The amount of bytes which each addressing mode takes in its argument
local BYTES_PER_ADDRESSING_MODE: { [T.EAddressingMode]: number } = {
    ["ZPX"] = 1, ["ZPY"] = 1, ["ABX"] = 2, ["ABY"] = 2,
    ["INX"] = 1, ["INY"] = 1, ["IMP"] = 0, ["ACC"] = 0,
    ["IMM"] = 0, ["ZP0"] = 1, ["REL"] = 1, ["IND"] = 2,
}

local STATUS_FLAG_ORDER: {T.EStatusFlag} = {"C", "Z", "I", "D", "B", "U", "V", "N"}

local STATUS_FLAG_MASKS: {[T.EStatusFlag]: number} = {
	C = LSHIFT(1, 0), Z = LSHIFT(1, 1), I = LSHIFT(1, 2), D = LSHIFT(1, 3),
	B = LSHIFT(1, 4), U = LSHIFT(1, 5), V = LSHIFT(1, 6), N = LSHIFT(1, 7),
}


local m = {
	StatusFlagOrder = STATUS_FLAG_ORDER,
	StatusFlagMasks = STATUS_FLAG_MASKS,
	BytesPerAddressingMode = BYTES_PER_ADDRESSING_MODE,
	OpcodeLookup = OPCODE_LOOKUP,

	SP_BASE		    = 0x0100,
	SP_RESET		= 0x00FD,
	PC_RES			= 0xFFFC,
	PC_IRQ			= 0xFFFE,
	PC_NMI			= 0xFFFA,
}

return m