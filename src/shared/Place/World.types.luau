

export type Remotes = {
    OnStreamData: RemoteEvent,          -- Send / Receive
    WatchConsole: RemoteFunction,       -- Send
    OccupyConsole: RemoteFunction,      -- Send
    UnwatchConsole: RemoteFunction,     -- Send
    UnoccupyConsole: RemoteFunction     -- Send
}

export type ConsoleSetup = {
    ImageLabel: ImageLabel,
    UsePrompt: ProximityPrompt
}

export type World = {
    ConsoleSetups: {[Instance]: ConsoleSetup},
    GetConsoleSetupOccupantByKey: (Instance) -> Player?,
    Remotes: Remotes
}


return {}