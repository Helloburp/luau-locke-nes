
local inst_components = script.Parent.Parent.Components

local T_H = require(script.Parent.Parent.Core["Helpers.types"])
type u16 = T_H.u16

local T = require(script.Parent["AudioPlayer.types"])
type State = T.State
type Library = T.Library
type Pulse = T.Pulse

local C = require(script.Parent["AudioPlayer.constants"])

local T_APU = require(inst_components["APU.types"])
type APUState = T_APU.State

local Apu = require(inst_components.APU)


local m = {}

function m.New(library: Library, parent: Instance): State
    return {
        Pulse1 = _newPulse(library, parent),
        Pulse2 = _newPulse(library, parent),
        Triangle = _newSound(library.TRI_C4, parent),
        Noise = _newSound(library.NOISE_C4, parent)
    }
end


function m.Update(state: State, apuState: APUState)
    state.Pulse1["50"].Volume = 1
    state.Pulse1["50"].PlaybackSpeed = _frequencyToPitchFromMiddleC(
        _rawPeriodToFrequency(
            Apu.GetRawPeriod(
                apuState.Pulse1.Reg3, apuState.Pulse1.Reg4
            )
        )
    )

    state.Pulse2["75"].Volume = 1
    state.Pulse2["75"].PlaybackSpeed = _frequencyToPitchFromMiddleC(
        _rawPeriodToFrequency(
            Apu.GetRawPeriod(
                apuState.Pulse2.Reg3, apuState.Pulse2.Reg4
            )
        )
    )

    state.Triangle.Volume = 1
    state.Triangle.PlaybackSpeed = _frequencyToPitchFromMiddleC(
        _rawPeriodToFrequency(
            Apu.GetRawPeriod(
                apuState.Triangle.Reg2, apuState.Triangle.Reg3
            )
        )
    )

    state.Noise.Volume = 1
    state.Triangle.PlaybackSpeed = _frequencyToPitchFromMiddleC(
        C.NOISE_FREQUENCY_LOOKUP[Apu.GetRawNoisePeriod(apuState.Noise.Reg2)]
    )
end


function _newPulse(library: Library, parent: Instance): Pulse
    return {
        ["87_5"] = _newSound(library.PULSE_87_5_C4, parent),
        ["75"] = _newSound(library.PULSE_75_C4, parent),
        ["50"] = _newSound(library.PULSE_50_C4, parent),
        ["25"] = _newSound(library.PULSE_25_C4, parent),
    }
end


function _newSound(id: string, parent: Instance): Sound
    local sound = Instance.new("Sound", parent)
    sound.Looped = true
    sound.SoundId = id
    sound.Volume = 0
    sound:Play()

    sound.PlaybackRegionsEnabled = true
    sound.LoopRegion = NumberRange.new(0.1, 2)

    return sound
end


function _rawPeriodToFrequency(period: u16)
    return C.PERIOD_NUMERATOR/(period + 1)
end


function _frequencyToPitchFromMiddleC(frequency: number)
    return frequency/C.FREQ_MIDDLE_C
end


return m