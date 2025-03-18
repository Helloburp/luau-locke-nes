local m = {}


function m.Outliers(oldOutliers: NumberRange, value: number)
    return NumberRange.new(
        math.min(oldOutliers.Min, value),
        math.max(oldOutliers.Max, value)
    )
end


function m.Speed(deltaCycles: number, deltaTime: number, targetCycleHz: number): number
    return deltaCycles/(deltaTime*targetCycleHz)
end


function m.Average(state: {number})
    local sum = 0
    for _, v in state do sum += v end

    return sum/#state
end


function m.RollingState(state: {number}, length: number, value: number)
    while #state >= length do
        table.remove(state, 1)
    end

    table.insert(state, value)
end


return m