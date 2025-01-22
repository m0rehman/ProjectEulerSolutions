local function difference(n)
    local sum = (n * (n + 1)) / 2
    local squaredSum = sum * sum
    local sumOfSquared = (n * (n + 1) * (2*n + 1)) / 6

    return squaredSum - sumOfSquared
end

print(difference(100))
