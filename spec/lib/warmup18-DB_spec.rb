require 'spec_helper'
require 'warmup18-DB'

describe SumSeries do
  it "is a SumSeries" do
    expect(subject).to be_a(SumSeries)
  end

  describe "sum numbers" do
    it "returns sum of 1..5 as 15" do
      expect(subject.new(1,5).result).to eq(15)
    end
  end


end
