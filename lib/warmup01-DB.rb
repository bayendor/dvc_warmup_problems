#!/usr/bin/env ruby

# Factorial using recursion
class Integer
  def factorial
    if self <= 1
         1
       else
         self * (self - 1).factorial
       end
  end
end

# Factorial without recursion
def fact(num)
  (1..num).inject(:*) || 1
end

fact(1) # => 1
fact(10) # => 3628800
