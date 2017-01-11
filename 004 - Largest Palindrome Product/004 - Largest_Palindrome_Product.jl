function isPalindrome(n)
    s = string(n)
    s == reverse(s)
end

max = 0
for i in collect(999:-1:100)
    for j in collect(999:-1:100)
        n = i*j
        if (isPalindrome(n) && n > max) 
            max = n
        end
    end
end

println(max)