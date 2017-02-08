function sieve(limit)
    primes = fill(true, limit)
    primes[1] = false
    for p in 2:limit
        primes[p] || continue
        for i = 2:div(limit, p)
            primes[p*i] = false
        end
    end
    find(primes)
end

println(sum(sieve(2_000_000)))
