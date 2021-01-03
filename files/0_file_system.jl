# Julia has built in functions to work easily with files
# suports operations like pwd cd readdir rm 

# WARNING: path are relative to the julia interpreter/compiler 

pwd()

readdir(".")

cd("files")

touch("julia.txt")

println(readdir("."))