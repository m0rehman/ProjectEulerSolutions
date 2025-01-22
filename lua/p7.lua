local function isPrime(num) -- from p3
    if num <= 1 then
        return false
    end
    for i = 2, math.sqrt(num) do
        if num % i == 0 then
            return false
        end
    end
    return true
end

local function findNthPrime(n)
    local count = 0
    local current = -1

    while count < n do
        current = current + 1

        if isPrime(current) then
            count = count + 1
        end
    end

    return current
end

print(findNthPrime(10001))
