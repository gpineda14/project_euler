def largest_palindrome
  palindromes = []
  i = 999
  j = 999
  i.downto(100) do |i|
    j.downto(100) do |j|
      if (i * j).to_s == (i * j).to_s.reverse
        palindromes.push(i * j)
      end
    end
  end
  palindromes.max 
end
