require 'spec_helper'
require 'warmup13-DB'

describe FractionCalculator do
  it "is a FractionCalculator" do
    expect(subject).to be_a(FractionCalculator)
  end

  describe ".total" do
    it "returns zero by default" do
      expect(subject.total).to eq('0')
    end
  end

  describe ".add" do
    it "accepts a fraction string" do
      expect(subject.add("1/2")).to eq("1/2")
    end

    it "adds and reduces the fraction" do
      expect{subject.add("2/4")}.to change(subject, :total).from("0").to("1/2")
      expect{subject.add("2/4")}.to change(subject, :total).from("1/2").to("1")
    end

    describe "test adding different fractions'" do

      it "returns the proper values for each addition" do
        expect{subject.add("1/4")}.to change(subject, :total).from("0").to("1/4")
        expect{subject.add("2/8")}.to change(subject, :total).from("1/4").to("3/8")
      end
    end
  end
end

