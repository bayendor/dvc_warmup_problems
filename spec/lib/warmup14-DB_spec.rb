require 'spec_helper'
require 'warmup14-DB'

describe FizzBuzz do
  it "is a FizzBuzz class" do
    expect(subject).to be_a(FizzBuzz)
  end

  describe "testing output" do
    it "returns 'Fizz' if divisible by 3" do
      expect(subject.test_number(3)).to eq("Fizz")
    end

    it "returns 'Buzz' if divisible by 5" do
      expect(subject.test_number(5)).to eq("Buzz")
    end

    it "returns 'FizzBuzz' if divisible by 3 & 5" do
      expect(subject.test_number(15)).to eq("FizzBuzz")
    end

    it "checks for zero" do
      expect(subject.test_number(0)).to eq("number is not allowed")
    end

    it "works for negative numbers" do
      expect(subject.test_number(-5)).to eq("Buzz")
    end
  end
end

# BeerSong exercise re-written as a class
describe BeerSong do
  it "is a BeerSong class" do
    expect(subject).to be_a(BeerSong)
  end

  describe "testing verses output" do
    it "returns the proper array for verse 99" do
      expect(subject.verses(99)).to eq(
        ["99 bottles of beer on the wall, 99 bottles of beer.",
         "Take one down and pass it around, 98 bottles of beer on the wall."])
    end

    it "returns the proper array for verse 2" do
      expect(subject.verses(2)).to eq(
        ["2 bottles of beer on the wall, 2 bottles of beer.",
         "Take one down and pass it around, 1 bottle of beer on the wall."])
    end

    it "returns the proper array for verse 1" do
      expect(subject.verses(1)).to eq(
        ["1 bottle of beer on the wall, 1 bottle of beer.",
         "Take one down and pass it around, no more bottles of beer on the wall."])
    end

    it "handles 0 or less bottles" do
      expect(subject.verses(-1)).to eq(
        ["No more bottles of beer on the wall, no more bottles of beer",
         "Got to the store and buy some, no more bottles of beer on the wall"])
    end
  end
end


