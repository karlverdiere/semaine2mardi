
def villani
    i = 0
    sum = 0
    while i < 1000
        if (i % 3 == 0) || (i % 5 == 0)
            sum = sum + i
        end
        i += 1
    end
    return sum
end

puts villani
