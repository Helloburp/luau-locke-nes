
export type Pulse = {
    ["87_5"]: Sound,
    ["75"]: Sound,
    ["50"]: Sound,
    ["25"]: Sound,
}

export type State = {
    Pulse1: Pulse,
    Pulse2: Pulse,
    Triangle: Sound,
    Noise: Sound
}

export type Library = {
    PULSE_87_5_C4: string,
    PULSE_75_C4: string,
    PULSE_50_C4: string,
    PULSE_25_C4: string,
    TRI_C4: string,
    NOISE_C4: string,
}


return {}