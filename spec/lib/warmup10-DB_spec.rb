require 'spec_helper'
require 'warmup10-DB'


describe NumberGuesser do
  before(:each) do
    # We add 1 to the number, so it's actually 4
    Kernel.stub(:rand).and_return(3)
  end
  describe ".guess_number" do
    it "returns too low when you guess too low" do
      expect(subject.guess_number(2)).to eq("too low")
    end

    it "returns too high when you guess too high" do
      expect(subject.guess_number(10)).to eq("too high")
    end

    it "returns 'you got it in 1 tries' when you guess the answer" do
      expect(subject.guess_number(4)).to eq("you got it in 1 tries")
    end

    it "returns 'you got it in 3 tries' when you guess the answer" do
      expect(subject.guess_number(2)).to eq("too low")
      expect(subject.guess_number(5)).to eq("too high")
      expect(subject.guess_number(4)).to eq("you got it in 3 tries")
    end
  end
end

