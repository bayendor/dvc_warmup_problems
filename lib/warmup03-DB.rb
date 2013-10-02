# Find all multiples of 3 or 5 up to a given num
# and then sum those multiples

class NaturalNumbers
  def find_multiples(num)
    (1...num).select { |n| (n % 3 == 0 || n % 5 == 0) }
  end

  def sum_multiples(num)
    find_multiples(num).reduce(:+)
  end
end
