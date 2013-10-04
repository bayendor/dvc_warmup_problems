require 'spec_helper'
require 'warmup05-DB'

describe "Warmup 05: Say numbers in English" do

  # describe "Say.new(number).in_english" do
  #   it "instantiates a Say number" do
  #     expect(Say.in_english('22')).to be_a(Say)
  #   end
  # end

  describe "It says numbers 0..20" do
    it "responds with zero for 0" do
      expect(Say.new(0).in_english).to eq('zero')
    end

    it "responds with zero for 1" do
      expect(Say.new(1).in_english).to eq('one')
    end

    it "responds with eleven for 11" do
      expect(Say.new(11).in_english).to eq('eleven')
    end

    it "responds with thirteen for 13" do
      expect(Say.new(13).in_english).to eq('thirteen')
    end

    it "responds with fifteen for 15" do
      expect(Say.new(15).in_english).to eq('fifteen')
    end

    it "responds with sixteen for 16" do
      expect(Say.new(16).in_english).to eq('sixteen')
    end

    it "responds with twenty-three for 23" do
      expect(Say.new(23).in_english).to eq('twenty-three')
    end

    it "responds with thirty for 30" do
      expect(Say.new(30).in_english).to eq('thirty')
    end

  end

  describe ".say" do
    it "says it" do
      pending 'implement to OS X audio'
    end
  end

end
