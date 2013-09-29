#!/usr/bin/env ruby -wKU

# Utilizing TDD write a Say class that will spell out the positive numbers
# in English starting from 0 to...
# Examples:
#   Say.new(22).in_english => 'twenty-two'
# Good Test Cases:
#   0
#   14
#   50
#   98
#   100
# Bonus
# Shell out to the say command to say the number
# Call this method speak_in_english

class Say
  attr_accessor :number

  def initialize(number)
    self.number = number
  end

  def in_english
    case number
    when 0
      'zero'
    when 1
      'one'
    when 2
      'two'
    when 3
      'three'
    when 4
      'four'
    when 5
      'five'
    when 6
      'six'
    when 7
      'seven'
    when 8
      'eight'
    when 9
      'nine'
    when 10
      'ten'
    when 11
      'eleven'
    when 12
      'twelve'
    when 13
      'thirteen'
    else
      if number == 15
        'fifteen'
      elsif number == 18
        'eighteen'
      elsif number < 20
        "#{Say.new(number - 10).in_english}teen"
      elsif number < 30
        remainder = number - 20
        if remainder == 0
          'twenty'
        else
          "twenty-#{Say.new(remainder).in_english}"
        end
      elsif number < 40
        remainder = number - 30
        if remainder == 0
          'thirty'
        else "thirty-#{Say.new(remainder).in_english}"
        end
        # keep repeating to desired end-state, i.e. 100, 1000, etc...
      end
    end
  end

  def speak_in_english
    joshua_says = "'The number is #{self.in_english}'"
    `say #{joshua_says}`
  end
end


