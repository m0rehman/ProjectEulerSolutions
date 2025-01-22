local fib_mt = {
    __index = function(self, key)
        if key < 2 then return 1 end
        -- update the table
        self[key] = self[key - 2] + self[key - 1]

        return self[key]
    end
}

local fib = setmetatable({}, fib_mt)

local function findSumEvensFib(limit)
    local sum = 0
    local i = 0

    while true do
        local fibValue = fib[i]
        if fibValue > limit then
            break
        end
        if fibValue % 2 == 0 then
            sum = sum + fibValue
        end
        i = i + 1
    end

    return sum
end

print(findSumEvensFib(4000000))
