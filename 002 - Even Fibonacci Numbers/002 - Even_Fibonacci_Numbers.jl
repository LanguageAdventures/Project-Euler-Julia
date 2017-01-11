fibber(pre, cur, n) = cur>4e6 ? n : fibber(cur, pre+cur, cur%2 == 1 ? n : n+cur)
println(fibber(1, 2, 0))
