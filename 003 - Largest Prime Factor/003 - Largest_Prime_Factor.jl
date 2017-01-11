sqr = sqrt(num)
c = 3
max = num
while c <= sqr
    while num % c == 0
        num /= c
        max = c
    end
    c += 2
end
println(max)