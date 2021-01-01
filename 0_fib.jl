function fib(n::Int)
  n<0 && error("n must be possitive")
  n==1 && return 1
  n==0 && return 1
  fib(n-1) + fib(n-2)
end

for i=1:parse(Int, ARGS[1])
  println(string("Fibonacci of", i, " = ", fib(i)))
end