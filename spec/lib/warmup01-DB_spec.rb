require 'spec_helper'
require 'warmup01-DB'

describe "Warmup 01: Factorial" do
  describe "num.factorial" do
    it "returns the factorial for 1" do
      expect(1.factorial).to eq(1)
    end
    it "returns the factorial for 2" do
      expect(2.factorial).to eq(2)
    end
    it "returns the factorial for 3" do
      expect(3.factorial).to eq(6)
    end
    it "returns the factorial for 4" do
      expect(4.factorial).to eq(24)
    end
    it "returns the factorial for 5" do
      expect(5.factorial).to eq(120)
    end
    it "returns the factorial for 6" do
      expect(6.factorial).to eq(720)
    end
    it "returns the factorial for 7" do
      expect(7.factorial).to eq(5040)
    end
    it "returns the factorial for 8" do
      expect(8.factorial).to eq(40320)
    end
    it "returns the factorial for 9" do
      expect(9.factorial).to eq(362880)
    end
    it "returns the factorial for 10" do
      expect(10.factorial).to eq(3628800)
    end
  end
end
