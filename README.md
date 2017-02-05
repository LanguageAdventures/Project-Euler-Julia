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

# indentation is not important, blocks end with 'end' keyword
if ...
elseif ...
else ...
end

# we can iterate over arrays, dictionaries, sets and strings
for s in ["Hello", "World", "!"]
end

for s=["Hello", "World", "!"]
end

# functions return last statement
function add(a, b)
  a + b
end

# inline (compact) functions
add(a, b) => a + b

# splat (destructuring)
add([23, 19]...) # add(23, 19)

# default argument values
add(a = 23, b = 19) => a + b

# keyed arguments (can be called with argument name). must be defined after ';'
# cannot be inline, all keyed arguments must have a default value and parameters need to be called explicitly
function add(; a = 23, b = 19)
  a + b
end

add(a = 4)          # = 23

# anonymous functions (lambda syntax)
add = (a, b) -> a + b

# IIFE
((a, b) -> a + b)(23, 19)

# currying
function adder(a)
  b -> a + b
end

addThree = adder(3)
addThree(19)        # = 23

# built-in higher-order functions
filter(n -> n > 42, collect(1:100))       # = 43, 44, ..., 100
map(addThree, [2, 3, 5, 7])               # = 5, 6, 8, 10
reduce(*, [2, 3, 5, 7])                   # = 210

# list comprehension
[addThree(i) for i=[2, 3, 5, 7]]          # = 5, 6, 8, 10
[addThree(i) for i in [2, 3, 5, 7]]       # = 5, 6, 8, 10

# Julia does not check types statically but has a type system
# we can define types, just we need to code functions outside of the type block (unlike java, c#)
type Animal
  age::Int8
  class::String
end

showAge = (a::Animal) -> println(a.age)
harriet = animal(255, "Tortoise")
showAge(harriet)                          # = 255

# sub-types can only inherit from abstract types
abstract Pet

type Dog <: Pet
  barkDecibel::Int32
end

bark = (d::Dog) -> println(string(fill("woof!", d.barkDecibel)...))
terrier = Dog(4)
bark(terrier)                             # = woof!woof!woof!woof!

```
