def multiples_of_three_and_five(n)
  return 3 if n == 3
  result = []
  result << n if n % 3 == 0
  result << n if n % 5 == 0
  result << multiples_of_three_and_five(n - 1)
  result.uniq!
  result.inject {|sum, n| sum + n}
end
