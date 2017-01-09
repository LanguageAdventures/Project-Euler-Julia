fibber(pre, cur, n) = cur>=4e6 ? n+pre : fibber(cur, pre+cur, pre%2 == 1 ? n : n+pre)
println(fibber(1, 2, 0))
