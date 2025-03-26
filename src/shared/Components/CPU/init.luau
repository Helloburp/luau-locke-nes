--!optimize 2


local T = require(script.Parent["CPU.types"])
type CPU = T.CPU
type Regs = T.Registers
type StatusFlagFunctions = T.StatusFlagFunctions
type State = T.State
type CpuClosure = T.CPUClosure

local inst_core = script.Parent.Parent.Core

local T_H = require(inst_core["Helpers.types"])

type u8 = T_H.u8
type u16 = T_H.u16
type Bus = T_H.Bus


local C = require(script.Parent["CPU.constants"])
local h = require(inst_core.Helpers)

local Instructions = require(script.Instructions)
local AddressingModes = require(script.AddressingModes)

local m = {}

local LSHIFT, BAND = bit32.lshift, bit32.band

local _u8, _u16 = h.WrapU8, h.WrapU16

local STATUS_MASK_I = C.StatusFlagMasks["I" :: T.EStatusFlag]


local OPCODE_BEHAVIOR = {}
for i, data in C.SlowOpcodeLookup do
	OPCODE_BEHAVIOR[i] = {
        [1] = Instructions[data.Instruction],
        [2] = AddressingModes[data.AddressingMode],
        [3] = data.Cycles,
        [4] = data.HasOopsCycle,
        [5] = C.BytesPerAddressingMode[data.AddressingMode]
	}
end


function m.NewClosure(
    oldState: State
): CpuClosure
    local _read, _write =
        function(addr: u16) return 0x00 :: u8 end,
        function(addr: u16, data: u8) return true end
    local bus: Bus = {
        Read = _read,
        Write = _write
    }

    local exec_cycles, exec_clock =
        oldState.ExecutionState.Cycles,
        oldState.ExecutionState.Clock

    local nmiInput, irqInput = oldState.NMIInput, oldState.IRQInput
    local regs = table.clone(oldState.Registers)

    local OUT_STATE: State
    do
        local mt_execution = {
            __index = function(_, k)
                return
                    if k == "Clock" then exec_clock
                    elseif k == "Cycles" then exec_cycles
                    else _invalidIndex(k)
            end,
            __newindex = function(_, k, v)
                if k == "Clock" then exec_clock = v
                elseif k == "Cycles" then exec_cycles = v
                else _invalidIndex(k)
                end
            end
        }

        local mt_state = {
            __index = function(_, k)
                return
                    if k == "NMIInput" then nmiInput
                    elseif k == "IRQInput" then irqInput
                    elseif k == "Registers" then regs
                    else _invalidIndex(k)
            end,
            __newindex = function(_, k, v)
                if k == "NMIInput" then nmiInput = v
                elseif k == "IRQInput" then irqInput = v
                else _invalidIndex(k)
                end
            end
        }

        OUT_STATE = setmetatable({
            ExecutionState = setmetatable({}, mt_execution),
        }, mt_state) :: any
    end

    local function _myRunInstructionAndReturnCycles(): number
        local opcode = _read(regs.PC)
        regs.PC = (regs.PC + 1)%0x10000

        local opcodeBehavior = OPCODE_BEHAVIOR[opcode + 1] -- Lua moment
        local addrModeBytes = opcodeBehavior[5]

        local lo = _read(regs.PC)
        local hi = _read((regs.PC + 1)%0x10000)
        regs.PC = (regs.PC + addrModeBytes)%0x10000

        local addrModeArg = if addrModeBytes == 1 then lo
            elseif addrModeBytes == 2 then lo + LSHIFT(hi, 8)
            else 0
        

        -- Addressing mode
        local addr, addrOopsCycle = (opcodeBehavior[2])(
            regs, addrModeArg, bus
        )


        -- Instruction
        local extraCycles = (opcodeBehavior[1])(
            regs, addr, bus
        )

        
        return opcodeBehavior[3] + (extraCycles or 0) + (
            (addrOopsCycle and opcodeBehavior[4]) and 1 or 0    -- Should oops cycle?
        )
    end

    local function _clock()
        if exec_cycles == 0 then
            exec_cycles +=
                if nmiInput then _nmi(OUT_STATE, bus)
                elseif (
                    irqInput and BAND(regs.STATUS, STATUS_MASK_I) == 0
                ) then _irq(OUT_STATE, bus)
                else _myRunInstructionAndReturnCycles()
        end

        exec_clock += 1
        exec_cycles -= 1
    end

    
    return {
        Clock = _clock,
        UpdateBus = function(newBus: Bus)
            _read, _write = newBus.Read, newBus.Write
            bus = newBus
        end,
        State = OUT_STATE
    }
end


function m.NewRegisters(): Regs
    return {
        A = 0, X = 0, Y = 0,
        PC = 0x0000, SP = 0xFD,
        STATUS = 0b00100100     -- Interrupt and unused set to 1
    }
end


function m.RunInstructionAndReturnCycles(
    regs: Regs, bus: Bus,
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction}
): number
    local opcode = bus.Read(regs.PC)
    regs.PC = (regs.PC + 1)%0x10000

    local opcodeBehavior = OPCODE_BEHAVIOR[opcode + 1] -- Lua moment
    local addrModeBytes = opcodeBehavior[5]

    local lo = bus.Read(regs.PC)
    local hi = bus.Read((regs.PC + 1)%0x10000)
    regs.PC = (regs.PC + addrModeBytes)%0x10000

    local addrModeArg = if addrModeBytes == 1 then lo
        elseif addrModeBytes == 2 then lo + LSHIFT(hi, 8)
        else 0
    

    -- Addressing mode
    local addr, addrOopsCycle = (opcodeBehavior[2])(
        regs, addrModeArg, bus
    )


    -- Instruction
    local extraCycles = (opcodeBehavior[1])(
        regs, addr, bus
    )

    
    return opcodeBehavior[3] + (extraCycles or 0) + (
        (addrOopsCycle and opcodeBehavior[4]) and 1 or 0    -- Should oops cycle?
    )
end


function m.Clock(cpu: CPU, bus: Bus)
    local state = cpu.State

    if state.ExecutionState.Cycles == 0 then
         state.ExecutionState.Cycles +=
            if state.NMIInput then _nmi(state, bus)
            elseif (
                state.IRQInput and BAND(state.Registers.STATUS, STATUS_MASK_I) == 0
            ) then _irq(state, bus)
            else m.RunInstructionAndReturnCycles(
                state.Registers, bus,
                cpu.AddressingModes :: any,
                cpu.Instructions :: any
            )
    end

    state.ExecutionState.Clock += 1
    state.ExecutionState.Cycles -= 1
end


--[[
    Note: The PC stack offset is set to 0.
    This is because, in my clock function, execution of an
    interrupt happens *just* before another instruction
    is ran, ergo, PC + 0 is where execution must resume.
]]

function _nmi(state: State, bus: Bus): number
    Instructions.Interrupt(state.Registers, 0xFFFA, bus, 0, false)
    state.NMIInput = false
    return 8
end

function _irq(state: State, bus: Bus): number
    Instructions.Interrupt(state.Registers, 0xFFFE, bus, 0, false)
    return 7
end


function _invalidIndex(k)
    error(`Invalid index '{k}'`)
end

function m.NewState(): State
    return {
        Registers = m.NewRegisters(),
        ExecutionState = {
            Cycles = 7, Clock = 0   -- Startup sequence takes 7 cycles
        },
        NMIInput = false,
        IRQInput = false,
    }
end


function m.CopyState(state: State): State
    return {
        Registers = table.clone(state.Registers),
        ExecutionState = {
            Cycles = state.ExecutionState.Cycles,
            Clock = state.ExecutionState.Clock
        },
        NMIInput = state.NMIInput,
        IRQInput = state.IRQInput
    }
end


-- New CPU struct with values set to expected state at startup
function m.New(
    addressingModes: {[T.EAddressingMode]: T.GenericAddressingMode},
    instructions: {[T.EInstruction]: T.GenericInstruction},
    state: State?
): CPU
    return {
        State = state or m.NewState(),
        AddressingModes = addressingModes,
        Instructions = instructions,
    }
end


return m