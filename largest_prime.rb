def largest_prime(n)
  #find largest divisible of n by getting square root of it
  largest = nil
  factor = Math.sqrt(n).to_i

  #find out if numbers are divisible
  while factor > 1
    #if n is divisible by factor then check if factor is prime number
    if n % factor == 0
      largest = factor if is_prime(factor)
    end

    factor -= 1

    break if largest != nil #break loop if largest is set

  end

  largest

end

def is_prime(n)

  if (2..Math.sqrt(n).to_i).any? {|val| n % val == 0}
    return false
  end

  return true

end
