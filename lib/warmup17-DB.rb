# A multiplication table:

#    *   1   2   3   4   5   6   7   8   9  10
#    1   1   2   3   4   5   6   7   8   9  10
#    2   2   4   6   8  10  12  14  16  18  20
#    3   3   6   9  12  15  18  21  24  27  30
#    4   4   8  12  16  20  24  28  32  36  40
#    5   5  10  15  20  25  30  35  40  45  50
#    6   6  12  18  24  30  36  42  48  54  60
#    7   7  14  21  28  35  42  49  56  63  70
#    8   8  16  24  32  40  48  56  64  72  80
#    9   9  18  27  36  45  54  63  72  81  90
#   10  10  20  30  40  50  60  70  80  90 100

# Write a program that generates any arbitrary sized multiplication table.

class MultiplicationTable
  attr_accessor :table_array

  def initialize
    self.table_array = []
  end

  def generate_table(table_size)
    (1..table_size).each do |x|
      line_array = []
      (1..table_size).each { |y| line_array.push(x * y) }
      table_array.push(line_array)
    end
    table_array
  end

  def print_table
    puts "* #{table_array[0].join(' ')}"
    (1..table_array.length).each do |x|
      puts "#{x} #{table_array[x - 1].join(' ')}"
    end
  end
end
