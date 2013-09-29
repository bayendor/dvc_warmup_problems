# Write a TruthTable class that has an instance method "generate" that takes
# an expression and returns an array of truthtable rows.
# Truthtable.new.generate('A')
# => [['A','A'],[true,true],[false,false]]
# Truthtable.new.generate('A || B')
# ['A','B','A || B'], [true, true, true], [true, false, true],
# [false,true,true], [false, false, false]

class TruthTable

  def generate(expression)
    truth_table_array = []
    expression
  end

end
