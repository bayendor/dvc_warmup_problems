require 'spec_helper'
require 'warmup19-DB'

describe Fibonacci do
  it "should be a Fibonacci" do
    subject.should be_a(Fibonacci)
  end

  describe ".result" do
    it "returns the Fibonacci of 0" do
      expect(subject.result(0)).to eq(0)
    end

    it "returns the Fibonacci of 1" do
      expect(subject.result(1)).to eq(1)
    end

    it "returns the Fibonacci of 2" do
      expect(subject.result(2)).to eq(1)
    end

    it "returns the Fibonacci of 3" do
      expect(subject.result(3)).to eq(2)
    end

    it "returns the Fibonacci of 4" do
      expect(subject.result(4)).to eq(3)
    end

    it "returns the Fibonacci of 5" do
      expect(subject.result(5)).to eq(5)
    end

    it "returns the Fibonacci of 6" do
      expect(subject.result(6)).to eq(8)
    end

    it "returns the Fibonacci of 7" do
      expect(subject.result(7)).to eq(13)
    end

  end
end

