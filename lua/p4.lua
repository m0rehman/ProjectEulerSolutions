local function maxThreeDigit()
    local max = 0

    for i = 999, 100, -1 do
        for j = i, 100, -1 do -- Avoid redundant checks
            local product = i * j
            if product > max and tostring(product) == string.reverse(tostring(product)) then
                max = product -- Update max if a larger palindrome is found
            end
        end
    end

    return max -- Return the largest palindrome
end

print(maxThreeDigit())
