def fib(n)
  raise("n must be possitive") if n < 0
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

to = ARGV[0].to_i

(0..to).each do |i| 
  fib(i)
end