require 'spec_helper'
require 'warmup02-DB'

describe Temperature do
  let(:negative_forty_in_celsius) { Temperature.from_celsius(-40) }
  let(:zero_in_celsius) { Temperature.from_celsius(0) }
  let(:one_hundred_in_celsius) { Temperature.from_celsius(100) }

  let(:negative_forty_in_fahrenheit) { Temperature.from_fahrenheit(-40) }
  let(:thirty_two_in_fahrenheit) { Temperature.from_fahrenheit(32) }
  let(:two_hundred_twelve_in_fahrenheit) { Temperature.from_fahrenheit(212) }

  # temp = Temperature.from_celsius(_____).to_fahrenheit
  describe "#from_fahrenheit(temperature)" do
    it "instantiates a temperature" do
      expect(Temperature.from_fahrenheit(26)).to be_a(Temperature)
    end
  end

  describe "#from_celsius(temperature)" do
    it "instantiates a temperature" do
      expect(Temperature.from_celsius(26)).to be_a(Temperature)
    end
  end

  describe "#to_celsius" do
    it "returns the temperature in celsius" do
      temperature = Temperature.from_celsius(0)
      expect(temperature.to_celsius).to eq(0.0)
    end

    it "returns the temperature in celsius (does the conversion)" do
      temperature = Temperature.from_fahrenheit(32)
      expect(temperature.to_celsius).to eq(0.0)
    end

    it "converts things appropriately" do
      expect(negative_forty_in_celsius.to_celsius).to eq(
             negative_forty_in_fahrenheit.to_celsius)
      expect(zero_in_celsius.to_celsius).to eq(
             thirty_two_in_fahrenheit.to_celsius)
      expect(one_hundred_in_celsius.to_celsius).to eq(
             two_hundred_twelve_in_fahrenheit.to_celsius)
    end
  end

  describe "#to_fahrenheit" do
    it "returns the temperature in fahrenheit" do
      temperature = Temperature.from_fahrenheit(26)
      expect(temperature.to_fahrenheit).to eq(26)
    end

    it "returns the temperature in fahrenheit (does the conversion)" do
      temperature = Temperature.from_celsius(0)
      expect(temperature.to_fahrenheit).to eq(32.0)
    end

    it "converts things appropriately" do
      expect(negative_forty_in_celsius.to_fahrenheit).to eq(
            negative_forty_in_fahrenheit.to_fahrenheit)
      expect(zero_in_celsius.to_fahrenheit).to eq(
            thirty_two_in_fahrenheit.to_fahrenheit)
      expect(one_hundred_in_celsius.to_fahrenheit).to eq(
            two_hundred_twelve_in_fahrenheit.to_fahrenheit)
    end
  end
end