# skip the first prime (2) and try only odd numbers. 10000. item is now 10001. item :)

function buildPrimes(count)
    primes = Array(Int64, count)
    slot = 1

    function check(n)
        i = 1
        while i < slot
            if primes[i]%n == 0
                return false
            end
            i += 1
        end
        return true
    end

    n = 3
    while slot <= count
        if check(n)
            primes[slot] = n
            slot += 1
        end
        n += 2
    end

    return primes
end

buildPrimes(16)