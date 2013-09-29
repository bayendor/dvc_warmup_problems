class NaturalNumbers
  def find_multiples(num)
    (1...num).select{|num| (num % 3 == 0 || num % 5 == 0)}
  end

  def sum_multiples(num)
    find_multiples(num).reduce(:+)
  end
end
