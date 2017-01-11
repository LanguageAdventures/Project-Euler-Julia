# Project-Euler-Julia
[Julia](http://julialang.org/) is a dynamic functional language focused on technical computing.
It has lots of abilities other than used here.

I'm using [Visual Studio Code](https://code.visualstudio.com/) with [this extension](https://marketplace.visualstudio.com/items?itemName=julialang.language-julia).

You can also use [Atom](https://atom.io/) with [Juno](http://junolab.org/).

# Key Notes
```julia
1 + 5im     # complex numbers
3//7        # rational numbers
2 \ 8       # = 4, reverse div
2 ^ 3       # = 8, power

~-1         # = 0, bitwise not
3 $ 4       # = 7, bitwise xor
4 >> 1      # = 2, bitwise shift right (>>> for logical shift)
4 << 1      # = 8, bitwise shift left
bits(42)    # = "0000000000000000000000000000000000000000000000000000000000101010", get the bits

2 < 3 < 5   # = true, chain comparisons

"n = $(n)"  # interpolation

push!(x)    # mutator functions end with !
☃ = 3       # unicode variables

# indexes start with 1
[2, 3, 5]               # an array
Int32[2, 3, 5]          # a typed array
[1:42]                  # range array
arr[end]                # end keyword can be used for the last index
matrix = [1 2; 3 4]     # multi-dimensional array

(1, 2, 3, 5)            # tuples are immutable as expected
a, b = b, a             # swap'em. julia auto generates tuples and unpacks them behind the curtains

dict = Dict("a"=> 1, "b"=> 2)   # dictionaries
haskey(dict, "a")               # check if it contains the key
in(("a", 1), dict)              # or check if it contains the key tuple (key-value-pair)

s = Set([2, 3, 5])              # Sets for unique iterables (or start with an empty Set)
union, intersect, setdiff       # mathematical Set functions
```
