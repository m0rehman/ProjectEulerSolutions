local function gcd(a, b)
    while b ~= 0 do
        a,b = b, a % b
    end
    return a
end

local function lcm(a,b)
    return (a*b)/gcd(a,b)
end

local function evenlyDivisible()
    local result = 1
    for i = 1, 20 do
        result = lcm(result, i)
    end
    return result
end

print(evenlyDivisible())
