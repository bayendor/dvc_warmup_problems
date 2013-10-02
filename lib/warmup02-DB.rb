# Temperature conversion using self
class Temperature
  attr_accessor :temp_in_f

  def initialize(temp)
    self.temp_in_f = temp
  end

  def self.from_fahrenheit(temp)
    new(temp)
  end

  def self.from_celsius(temp)
    temp_in_f = celsius(temp)
    new(temp_in_f)
  end

  def to_celsius
    self.class.fahrenheit(temp_in_f)
  end

  def to_fahrenheit
    temp_in_f
  end

  private

  def self.celsius(temp)
    ((temp * 9.0) / 5.0 + 32)
  end

  def self.fahrenheit(temp)
    ((temp - 32) * 5.0 / 9.0)
  end
end
