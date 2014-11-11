# Write a SumSeries class that takes a min and max arguments:
# series = SumSeries.new(1,100)
# SumSeries should have a result method that returns the sum of the numbers
# min to max: series.result = 5050, e.g: (1 + 2 + 3 ... + 99 + 100)

class SumSeries
  def initialize(min, max)
    @sum = (min..max)
  end

  def result
    @sum.reduce(:+)
  end
end
