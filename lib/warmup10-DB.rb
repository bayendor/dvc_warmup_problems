# Guess a number between 1 & 10
# If you guess low it should say "too low"
# If you guess high it should say "too high"
# If you guess the number it should say "you got it in # tries"

class NumberGuesser

  attr_accessor :number, :guess_count

  def initialize
    self.number = Kernel.rand(10) + 1
    self.guess_count = 0
  end

  def guess_number(guess)
    self.guess_count += 1
    if guess == number
      "you got it in #{guess_count} tries"
    elsif guess < number
      'too low'
    elsif guess > number
      'too high'
    end
  end
end
