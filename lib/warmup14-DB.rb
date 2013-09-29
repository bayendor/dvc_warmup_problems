# FizzBuzz exercise re-written as a class
class FizzBuzz

  def test_number(number)
    if number == 0
      'number is not allowed'
    elsif number % 15 == 0
      'FizzBuzz'
    elsif number % 5 == 0
      'Buzz'
    elsif number % 3 == 0
      'Fizz'
    else
      number
    end
  end

end

class BeerSong

   def pluralize(bottle_num)
    if bottle_num == 1 then
      "#{bottle_num} bottle"
    elsif bottle_num > 1 then
      "#{bottle_num} bottles"
     elsif bottle_num == 0 then
       'no more bottles'
    end
   end

   # call beer song for any number of bottles.
   def verses(number_of_bottles)
    verse_array = []
    if number_of_bottles <= 0
      verse_array.push "No more bottles of beer on the wall, no more bottles of beer"
      verse_array.push 'Got to the store and buy some, no more bottles of beer on the wall'
    else
      verse_array.push("#{pluralize(number_of_bottles)} of beer on the wall, #{pluralize(number_of_bottles)} of beer.")
      number_of_bottles -= 1
      verse_array.push("Take one down and pass it around, #{pluralize(number_of_bottles)} of beer on the wall.")
   end
   verse_array
 end
end

