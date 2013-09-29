#!/usr/bin/env ruby -wKU

class Temperature
  def initialize
    @to_fahrenheit = 0
    @to_celsius = 0
  end

  def from_celsius(celsius)
    @to_fahrenheit = ((celsius * 9.0) / 5.0 + 32)
  end

  def from_fahrenheit(fahrenheit)
    @to_celsius = ((fahrenheit - 32) * 5.0 / 9.0)
  end
end
