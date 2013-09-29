class FractionCalculator
  attr_accessor :total, :numerator, :denominator

  def initialize
    @total = 0
    @numerator = 0
    @denominator = 0
  end

  def total
    if denominator == 0
      '0'
    elsif numerator == denominator
      '1'
    else
      gcd = numerator.gcd(denominator)
      if gcd != 1 && gcd != denominator
        @numerator = @numerator / gcd
        @denominator = @denominator / gcd
      end
      "#{numerator}/#{denominator}"
    end
  end

  def add(fraction)
    numerator1 = fraction[0].to_i
    denominator1 = fraction[2].to_i
    if denominator == 0
      @numerator = numerator1
      @denominator = denominator1
    elsif denominator == denominator1
      @numerator += numerator1
    else
      lcm = denominator.lcm(denominator1)
      delta = lcm / denominator
      @numerator = @numerator * delta
      @denominator = @numerator * delta
      self.add(fraction)
    end
    "#{numerator}/#{denominator}"
  end
end

