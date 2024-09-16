local T = require(script.Parent["CPU.types"])

local LSHIFT = bit32.lshift


-- The following lookup was generated with scripts/InstructionStringManip.luau
-- *Please* save your sanity and do not edit this manually...

-- {EInstructionName, EInstruction, EAddressingMode, cycles, hasOopsCycle}
local OPCODE_LOOKUP = {
	{"BRK","BRK","IMM",7,false}, {"ORA","ORA","IZX",6, true}, {"???","XXX","IMM",2, true}, {"???","XXX","IZX",8, true}, {"???","NOP","ZP0",3, true}, {"ORA","ORA","ZP0",3, true}, {"ASL","ASL","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"PHP","PHP","IMP",3,false}, {"ORA","ORA","IMM",2, true}, {"ASL","ASL","IMP",2,false}, {"???","XXX","IMM",2, true}, {"???","NOP","ABS",4, true}, {"ORA","ORA","ABS",4, true}, {"ASL","ASL","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BPL","BPL","REL",2,false}, {"ORA","ORA","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"ORA","ORA","ZPX",4, true}, {"ASL","ASL","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"CLC","CLC","IMP",2,false}, {"ORA","ORA","ABY",4, true}, {"???","NOP","IMP",2, true}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"ORA","ORA","ABX",4, true}, {"ASL","ASL","ABX",7,false}, {"???","XXX","ABX",7, true}, 
	{"JSR","JSR","ABS",6,false}, {"AND","AND","IZX",6, true}, {"???","XXX","IMM",2, true}, {"???","XXX","IZX",8, true}, {"BIT","BIT","ZP0",3,false}, {"AND","AND","ZP0",3, true}, {"ROL","ROL","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"PLP","PLP","IMP",4,false}, {"AND","AND","IMM",2, true}, {"ROL","ROL","IMP",2,false}, {"???","XXX","IMM",2, true}, {"BIT","BIT","ABS",4,false}, {"AND","AND","ABS",4, true}, {"ROL","ROL","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BMI","BMI","REL",2,false}, {"AND","AND","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"AND","AND","ZPX",4, true}, {"ROL","ROL","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"SEC","SEC","IMP",2,false}, {"AND","AND","ABY",4, true}, {"???","NOP","IMP",2, true}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"AND","AND","ABX",4, true}, {"ROL","ROL","ABX",7,false}, {"???","XXX","ABX",7, true}, 
	{"RTI","RTI","IMP",6,false}, {"EOR","EOR","IZX",6, true}, {"???","XXX","IMM",2, true}, {"???","XXX","IZX",8, true}, {"???","NOP","ZP0",3, true}, {"EOR","EOR","ZP0",3, true}, {"LSR","LSR","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"PHA","PHA","IMP",3,false}, {"EOR","EOR","IMM",2, true}, {"LSR","LSR","IMP",2,false}, {"???","XXX","IMM",2, true}, {"JMP","JMP","ABS",3,false}, {"EOR","EOR","ABS",4, true}, {"LSR","LSR","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BVC","BVC","REL",2,false}, {"EOR","EOR","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"EOR","EOR","ZPX",4, true}, {"LSR","LSR","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"CLI","CLI","IMP",2,false}, {"EOR","EOR","ABY",4, true}, {"???","NOP","IMP",2, true}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"EOR","EOR","ABX",4, true}, {"LSR","LSR","ABX",7,false}, {"???","XXX","ABX",7, true}, 
	{"RTS","RTS","IMP",6,false}, {"ADC","ADC","IZX",6, true}, {"???","XXX","IMM",2, true}, {"???","XXX","IZX",8, true}, {"???","NOP","ZP0",3, true}, {"ADC","ADC","ZP0",3, true}, {"ROR","ROR","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"PLA","PLA","IMP",4,false}, {"ADC","ADC","IMM",2, true}, {"ROR","ROR","IMP",2,false}, {"???","XXX","IMM",2, true}, {"JMP","JMP","IND",5,false}, {"ADC","ADC","ABS",4, true}, {"ROR","ROR","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BVS","BVS","REL",2,false}, {"ADC","ADC","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"ADC","ADC","ZPX",4, true}, {"ROR","ROR","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"SEI","SEI","IMP",2,false}, {"ADC","ADC","ABY",4, true}, {"???","NOP","IMP",2, true}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"ADC","ADC","ABX",4, true}, {"ROR","ROR","ABX",7,false}, {"???","XXX","ABX",7, true}, 
	{"???","NOP","IMM",2, true}, {"STA","STA","IZX",6,false}, {"???","NOP","IMM",2, true}, {"???","XXX","IZX",6, true}, {"STY","STY","ZP0",3,false}, {"STA","STA","ZP0",3,false}, {"STX","STX","ZP0",3,false}, {"???","XXX","ZP0",3, true}, {"DEY","DEY","IMP",2,false}, {"???","NOP","IMM",2, true}, {"TXA","TXA","IMP",2,false}, {"???","XXX","IMM",2, true}, {"STY","STY","ABS",4,false}, {"STA","STA","ABS",4,false}, {"STX","STX","ABS",4,false}, {"???","XXX","ABS",4, true}, 
	{"BCC","BCC","REL",2,false}, {"STA","STA","IZY",6,false}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",6, true}, {"STY","STY","ZPX",4,false}, {"STA","STA","ZPX",4,false}, {"STX","STX","ZPY",4,false}, {"???","XXX","ZPX",4, true}, {"TYA","TYA","IMP",2,false}, {"STA","STA","ABY",5,false}, {"TXS","TXS","IMP",2,false}, {"???","XXX","ABY",5, true}, {"???","NOP","ABX",5, true}, {"STA","STA","ABX",5,false}, {"???","XXX","ABX",5, true}, {"???","XXX","ABX",5, true}, 
	{"LDY","LDY","IMM",2, true}, {"LDA","LDA","IZX",6, true}, {"LDX","LDX","IMM",2, true}, {"???","XXX","IZX",6, true}, {"LDY","LDY","ZP0",3, true}, {"LDA","LDA","ZP0",3, true}, {"LDX","LDX","ZP0",3, true}, {"???","XXX","ZP0",3, true}, {"TAY","TAY","IMP",2,false}, {"LDA","LDA","IMM",2, true}, {"TAX","TAX","IMP",2,false}, {"???","XXX","IMM",2, true}, {"LDY","LDY","ABS",4, true}, {"LDA","LDA","ABS",4, true}, {"LDX","LDX","ABS",4, true}, {"???","XXX","ABS",4, true}, 
	{"BCS","BCS","REL",2,false}, {"LDA","LDA","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",5, true}, {"LDY","LDY","ZPX",4, true}, {"LDA","LDA","ZPX",4, true}, {"LDX","LDX","ZPY",4, true}, {"???","XXX","ZPX",4, true}, {"CLV","CLV","IMP",2,false}, {"LDA","LDA","ABY",4, true}, {"TSX","TSX","IMP",2,false}, {"???","XXX","ABY",4, true}, {"LDY","LDY","ABX",4, true}, {"LDA","LDA","ABX",4, true}, {"LDX","LDX","ABY",4, true}, {"???","XXX","ABX",4, true}, 
	{"CPY","CPY","IMM",2,false}, {"CMP","CMP","IZX",6, true}, {"???","NOP","IMM",2, true}, {"???","XXX","IZX",8, true}, {"CPY","CPY","ZP0",3,false}, {"CMP","CMP","ZP0",3, true}, {"DEC","DEC","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"INY","INY","IMP",2,false}, {"CMP","CMP","IMM",2, true}, {"DEX","DEX","IMP",2,false}, {"???","XXX","IMM",2, true}, {"CPY","CPY","ABS",4,false}, {"CMP","CMP","ABS",4, true}, {"DEC","DEC","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BNE","BNE","REL",2,false}, {"CMP","CMP","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"CMP","CMP","ZPX",4, true}, {"DEC","DEC","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"CLD","CLD","IMP",2,false}, {"CMP","CMP","ABY",4, true}, {"NOP","NOP","IMP",2,false}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"CMP","CMP","ABX",4, true}, {"DEC","DEC","ABX",7,false}, {"???","XXX","ABX",7, true}, 
	{"CPX","CPX","IMM",2,false}, {"SBC","SBC","IZX",6, true}, {"???","NOP","IMM",2, true}, {"???","XXX","IZX",8, true}, {"CPX","CPX","ZP0",3,false}, {"SBC","SBC","ZP0",3, true}, {"INC","INC","ZP0",5,false}, {"???","XXX","ZP0",5, true}, {"INX","INX","IMP",2,false}, {"SBC","SBC","IMM",2, true}, {"NOP","NOP","IMP",2,false}, {"???","SBC","IMM",2, true}, {"CPX","CPX","ABS",4,false}, {"SBC","SBC","ABS",4, true}, {"INC","INC","ABS",6,false}, {"???","XXX","ABS",6, true}, 
	{"BEQ","BEQ","REL",2,false}, {"SBC","SBC","IZY",5, true}, {"???","XXX","IMP",2, true}, {"???","XXX","IZY",8, true}, {"???","NOP","ZPX",4, true}, {"SBC","SBC","ZPX",4, true}, {"INC","INC","ZPX",6,false}, {"???","XXX","ZPX",6, true}, {"SED","SED","IMP",2,false}, {"SBC","SBC","ABY",4, true}, {"NOP","NOP","IMP",2,false}, {"???","XXX","ABY",7, true}, {"???","NOP","ABX",4, true}, {"SBC","SBC","ABX",4, true}, {"INC","INC","ABX",7,false}, {"???","XXX","ABX",7, true},
}

-- Convenience table, because remembering indeces SUCKS
local SLOW_OPCODE_LOOKUP: {T.OpcodeData} = {} do
	for i, data in pairs(OPCODE_LOOKUP) do
		SLOW_OPCODE_LOOKUP[i] = {
			InstructionName = data[1],
			Instruction = data[2],
			AddressingMode = data[3],
			Cycles = data[4],
			HasOopsCycle = data[5],
		}
	end
end

-- The amount of bytes which each addressing mode takes in its argument
local BYTES_PER_ADDRESSING_MODE: { [T.EAddressingMode]: number } = {
    ["ZPX"] = 1, ["ZPY"] = 1, ["ABX"] = 2, ["ABY"] = 2,
    ["IZX"] = 1, ["IZY"] = 1, ["IMP"] = 0, ["ACC"] = 0,
    ["IMM"] = 1, ["ZP0"] = 1, ["REL"] = 1, ["IND"] = 2,
	["ABS"] = 2
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
	SlowOpcodeLookup = SLOW_OPCODE_LOOKUP,

	SP_BASE		    = 0x0100,
	SP_RESET		= 0x00FD,
	PC_RES			= 0xFFFC,
	PC_IRQ			= 0xFFFE,
	PC_NMI			= 0xFFFA,
}

return m