local inst_root = script.Parent.Parent
local inst_nes = inst_root.Nes

local T_H = require(inst_root.Core["Helpers.types"])
type Peripheral = T_H.Peripheral
type u8 = T_H.u8
type u16 = T_H.u16

local T = require(script.Parent["Controller.types"])
type EInput = T.EInput
type State = T.State


local T_EMU = require(script.Parent["Emulation.types"])
type IPorts<PortState> = T_EMU.IPorts<PortState>

local C = require(script.Parent["Controller.constants"])

local T_CPUP = require(inst_nes["CPUPeripherals.types"])
type Ports = T_CPUP.Ports

local RSHIFT, BAND = bit32.rshift, bit32.band

local m = {}


function _constructInput(_getInput: (EInput) -> ()): u8
    return C.InputOrder.Compose{
        ["A"]       = _getInput("A") and 1 or 0,
        ["B"]       = _getInput("B") and 1 or 0,
        ["Select"]  = _getInput("Select") and 1 or 0,
        ["Start"]   = _getInput("Start") and 1 or 0,
        ["Up"]      = _getInput("Up") and 1 or 0,
        ["Down"]    = _getInput("Down") and 1 or 0,
        ["Left"]    = _getInput("Left") and 1 or 0,
        ["Right"]   = _getInput("Right") and 1 or 0,
    }
end


function m.CopyState(state: State)
    return table.clone(state)
end


function m.NewState()
    return {
        Port1 = 0x00,
        Port2 = 0x00
    }
end


function m.New(
    _getPort1ButtonDown: (EInput) -> boolean,
    _getPort2ButtonDown: (EInput) -> boolean,
    _getStrobeLatch: () -> boolean
): IPorts<State>

    local function _fromState(state: State): Ports
        local function _controllerLatchUpdate(v: boolean)
            if v then return end
            state.Port1 = _constructInput(_getPort1ButtonDown)
            state.Port2 = _constructInput(_getPort2ButtonDown)
        end

        local function _readPort1()
            local nextValue = BAND(state.Port1, 0x01)
            state.Port1 = RSHIFT(state.Port1, 1)
            return nextValue
        end

        local function _readPort2()
            local nextValue = BAND(state.Port2, 0x01)
            state.Port2 = RSHIFT(state.Port2, 1)
            return nextValue
        end

        return {
            ControllerLatchUpdate = _controllerLatchUpdate,
            ReadPort1 = _readPort1,
            ReadPort2 = _readPort2,
        }
    end

    return {
        CopyState = m.CopyState,
        NewState = m.NewState,
        FromState = _fromState
    }
end

return m