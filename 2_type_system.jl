# Variables can be known in advance or inferred at runtime (like Scala or Java)
# Julia's type system is organized in a tree structure, with the root node being the Any type

# The next code just works on the Julia repl. Don't know yet why. (Because of this: https://stackoverflow.com/questions/62012171/julia-undefvarerror-subtypes-not-defined)

using InteractiveUtils

subtypes(Any)

supertype(Number)

# There ara different types of types

# Primitive types
# They are concrete types, can be instantiated. It's data consists in just bits (e.g integers floating point numbers). It is possible to declare primitive types.
# The standar primitive types are defined in julia.

str = "Sbstn Jmnz"

typeof(str)

num = 36

bool = true

cplex = 5 + 3im

rational = 7//5

# Abstract types

# They are just nodes in the type graph. Describe a set of related types (descendants)
# It is possible to define abstract types. Not supported in global context.

# The typeof operator determine the concrete type, with supertype and subtype can navegate the tree

supertype(Int64)

subtypes(Signed)


# Composite types 
# Collection of named fields (like objects y js or hashes in rb)
# Very used. They are unmutable

struct training
  name
  rating::Int64
  length::Number
end

julia_training = training("Julia: Getting Started", 5, 120)
println(julia_training.name)

# Mutable Composite types 

# Values can be changed. They are mutable, Can hold different values
# Generally allocated in the heap with a stable memory address

mutable struct ps_training
  name
  rating::Int64
  length::Number
end

pst = ps_training("Julia Intro",5,120)

println(pst.name)

pst.name = "Julia Basics"

println(pst)

# More cuatic types ahaha:

# Types union: special abstract type. Can be used to declare nullable types. With this, varialbes can have a value or null value
# Parametric: Types that take patameters. Good for reusability
# UnionAll: They are like pointers
# Type Aliases: Facilitate portability