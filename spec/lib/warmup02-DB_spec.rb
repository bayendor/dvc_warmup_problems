require 'spec_helper'
require 'warmup02-DB'

describe "Warmup 02: Temperature Converter" do
  temp = Temperature.new
  it 'should be class Temperature' do
    expect(temp).to be_a(Temperature)
  end

  describe ".from_celsius" do
    it "returns 89.6 F for 32 C" do
      expect(temp.from_celsius(32)).to eq(89.6)
    end

    it "returns 32 F for 0 C" do
      expect(temp.from_celsius(0)).to eq(32.0)
    end
  end

  describe ".from_fahrenheit" do
    it "returns 37 C for 98.6 F" do
      expect(temp.from_fahrenheit(98.6)).to eq(37)
    end

    it "returns -40 C for -40 F" do
      expect(temp.from_fahrenheit(-40)).to eq(-40)
    end
  end
end
