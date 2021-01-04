# A simple expresion
3 + 6
# under the hood this is what happens
+(3, 6)
# Now we can compose functions with the \circ for composition
println((sqrt ∘ +)(3, 6))
# Other example: Ths is a complicated line
map(x -> first(reverse(uppercase(x))),split("Julia Beginner Course"))
# The same, but simplified with composition
map(first ∘ reverse ∘ uppercase, split("Julia Beginner Course"))

# Combine functions together with |> 
(3,6) |> sum |> sqrt