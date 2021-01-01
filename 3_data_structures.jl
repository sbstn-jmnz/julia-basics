# Arrays or vectors
ratings = [1,2,3,4,5]
other = [1,"two",false] 
# First index is 1
ratings[1]
ratings[1:3]
# Two dim Arrays or Matrices
ratings_location = [1 2 3; 4 5 6]
typeof(ratings_location) # => Array{Int64,2}
# Second row
ratings_location[2, 1:3] # => [4, 5, 6]

# More than two dim or Vectors of n-dimentions
# cat is for concatenation. In this case two 2x2 matices are concatenated on the z axis
all_zeros = cat([0 0; 0 0],[0 0; 0 0], dims=3)

# Tuples: Fixed size group of variables. They are inmutable
tup = (1,2,3)
author = ("Xavier Morera", 25, 551, 4.2)
author[1] # => "Xavier Morera"

# Named Tuples
name_tup = (a=2, b=1+2)
author_named = (name="Xavier Morera", courses=25, followers=551, rating=4.2) 
author_named.name  # => "Xavier Morera"

# Dictionaries. The order of the keys is random.
# Suppoerts different data types for keys and values
dict = Dict(
  "a" => 1,
  "b" => 2,
  "c" => 3
)
author_dict = Dict("name"=>"Xavier Morera", "courses" => 25, "Followers"=>25, "rating"=>4.2)
author_dict["name"]

println(keys(author_dict))
values(author_dict)
