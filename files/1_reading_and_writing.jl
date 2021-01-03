
# open("julia.txt", <mode>)
file = open("julia.txt", "w")
# read() or write()
write(file, "Some text that I just made from a stupid unreal prediction")
# write return the number of chars written

# close(file) to free space of the program memory
close(file)

file = open("julia.txt", "r")

# Read seems to need an encoding in this case String
read(file, String)

close(file)

# With a code block

open("julia.txt", "a") do file
  write(file, "\nSome appended text")
end