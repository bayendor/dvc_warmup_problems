#!/usr/bin/env ruby
# Write a Fibonacci class

class Fibonacci
  def result(f)
    if f <= 1
      f
    else
      result(f - 1) + result(f - 2)
    end
  end
end
