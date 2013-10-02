require 'spec_helper'
require 'warmup18-DB'

  # Write a SumSeries class
  # that takes a min and max
  # as an argument.
  #
  #   series = SumSeries.new(1, 100)
  #
  # SumSeries instances should have
  # a result method that returns the
  # sum of the numbers from min to max
  #
  #   series.result = 1 + 2 + 3 + ... + 99 + 100 = 5050
  #

describe SumSeries do
  subject { SumSeries.new(1, 100) }
  it "is a SumSeries" do
    expect(subject).to be_a(SumSeries)
  end

  describe ".result" do
    it "returns the result of adding up all the numbers" do
      expect(subject.result).to eq(5050)
    end
  end
end
