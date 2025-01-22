local function isPrime(num)
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

local function largestPrimeFactor(num)
    local factor = 2
    local largestPrime = 1

    while num > 1 do
        if num % factor == 0 then
            if isPrime(factor) then
                largestPrime = factor
            end
            num = num / factor
        else
            factor = factor + 1
        end
    end

    return largestPrime
end

print(largestPrimeFactor(600851475143))
