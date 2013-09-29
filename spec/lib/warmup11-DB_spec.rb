require 'spec_helper'
require 'warmup11-DB'

describe WordFinder do
  it "is a WordFinder" do
    expect(subject).to be_a(WordFinder)
  end

  describe ".add_word" do

    it "returns [] for empty word" do
      expect(subject.add_word('')).to eq([])
    end

    it "returns ['w','o','r','d'] for 'word'" do
      expect(subject.add_word('word')).to eq(["w", "o", "r", "d"])
    end
  end
end

