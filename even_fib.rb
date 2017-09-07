def even_fib(seed=[1,2], n)
  seed << seed[-1] + seed[-2]
  if seed[-1] + seed[-2] < n
    even_fib(seed, n)
  end
  seed.select{ |num| num % 2 == 0 }.inject{ |sum, n| sum + n}
end

puts even_fib(4000000)
# => 4613732
