# sum of squares: (n*(n+1)*(2n+1))/6    https://trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm

sumsSquare = n -> ((n*(n+1))/2)^2
sumOfSquares = n -> (n*(n+1)*(2n+1))/6

println(Int64(sumsSquare(100) - sumOfSquares(100)))