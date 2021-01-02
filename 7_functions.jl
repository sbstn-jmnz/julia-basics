# With function keyword
function add_test_one(x, y)
  return x + y
end

# Using compact form
add_test_two(x, y) = x + y

add_test_one(40,2)
add_test_two(40,2)

# Anonymous functions
x -> x + 1

# Example with map
map(x -> println(x + 1), 1:3)

# Do-block syntax

map([1,2,3,4]) do x
  if x == 1
    return "one"
  elseif x == 2
    return "two"
  else
    return "something else"
  end
end

# Variable arguments functions with splat operator are interpreted as a tuple

function f_var(x, y, z...)
  println(typeof(z))
end

f_var(1,2,3,4,5,6,7)

# Named args and default values. Order in args can change on call

function moreCuaticDef(;x,y,z::Int64=1)
  println((x+y)*z)
end

moreCuaticDef(z=2,y=1,x=4)
moreCuaticDef(y=1,x=4)

# In Julia a method is one of possible behavior for a function
# When a function is called (Dispatched) Julia selects which method to Execute (multi-dispatch)