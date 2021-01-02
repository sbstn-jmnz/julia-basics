# Compound expression

# They return the last evaluated expression
# With begin and end
triangle_area = begin 
                  total_area = 15 * 4
                  total_area / 2
                end

println(triangle_area)

# or with Semicolon chain

triangle_area_II = (total_area = 15 * 4; total_area / 2)

println(triangle_area_II)


# Julia supports classic if elseif and ternany operator

temp = 110
humidity = 80

if (temp> -0) & (temp < 50)
  println("It is chilly outise")
elseif (temp >= 50) & (temp < 100)
  println("I am melting")
else
  println("Goodbye")
end 

weather = temp > 20 ? "hot" : "cold"

snow = (temp < 0) & (humidity > 60) ? "yes" : "no"

# Short-circuit evaluation
# e.g statement <b> is evaluated only if statement <a> is true

true && println("This was executed")
false && println("This was not executed")

false & true # => not a short-circuit eval. Both statements are evaluated

true || println("This was not executed")
false || println("This was executed")


# 
function(x)
  x != 0 || return 0
  X != 1 || return 1
  -1
end

# Loops

# For is to iterate aover an iterable object
# 
for number = 1:10
      println(number)
end

println("With in: ")

for course in ["Julia", "Python", "Scala"]
      println(length(course))
end 

for radius ∈ 1:10
    area = π * radius^2
    println("Area: ", area)
end

# While Loops

number = 0

while number < 10
  println(number)
  global number += 1
end


# Global keyword when the varaible is out of scope

radius = 1

while radius < 10
  area = π * radius^2
  println("Area: ", area)
  global radius += 1
end

# Break keyword and string interpolation

i = 1

while true
  println("Number: $i")
  if i >= 500
    break
  end
  global i += 1
end