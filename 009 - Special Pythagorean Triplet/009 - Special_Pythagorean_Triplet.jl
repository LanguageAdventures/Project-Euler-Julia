# simplified formula:	a = (500000-1000.b)/(1000-b), max b = 499
for b = 499:-1:1
    (a, r) = divrem(500000-1000*b, 1000-b)
    if r == 0
        println(a*b*(1000-a-b))
        break
    end
end
