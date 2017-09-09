def smallest_multiple
  start = 20
  until isDivisible(start)
    start += 1
  end
  start
end

def isDivisible(n)
  20.downto(10) do |factor|
    if n % factor != 0
      return false
    end
  end
  return true
end
