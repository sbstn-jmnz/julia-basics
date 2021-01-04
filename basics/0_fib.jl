function fib(n::Int)
  n<0 && error("n must be possitive")
  n==1 && return 1
  n==0 && return 0
  fib(n-1) + fib(n-2)
end

to = parse(Int, ARGS[1])

for i in 0:to
  fib(i)
end