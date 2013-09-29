require 'spec_helper'
require 'warmup03-DB'

describe "Warmup 03" do
  describe NaturalNumbers do

    describe "find multiples" do
      it "returns multiples of 3 or 5 up to 10" do
        expect(subject.find_multiples(10)).to eq([3, 5, 6, 9])
      end

      it "returns multiples of 3 or 5 up to 100" do
        expect(subject.find_multiples(100)).to eq([3, 5, 6, 9, 10, 12, 15, 18,
                                                   20, 21, 24, 25, 27, 30, 33,
                                                   35, 36, 39, 40, 42, 45, 48,
                                                   50, 51, 54, 55, 57, 60, 63,
                                                   65, 66, 69, 70, 72, 75, 78,
                                                   80, 81, 84, 85, 87, 90, 93,
                                                   95, 96, 99])
      end
    end

    describe "sum multiples" do
      it "sums multiples up to 10" do
        expect(subject.sum_multiples(10)).to eq(23)
      end

      it "sums multiples up to 100" do
        expect(subject.sum_multiples(100)).to eq(2318)
      end

      it "sums multiples up to 1000" do
        expect(subject.sum_multiples(1000)).to eq(233168)
      end
    end
  end
end
