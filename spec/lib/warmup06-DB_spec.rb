require 'spec_helper'
require 'warmup06-DB'

# Write a program that will convert a string
# into morse code.  Characters should be
# separated by a single space, words by
# a space followed by a slash followed by a
# space (' / ')
#
# Usage:
#   MorseCode.encode("sos")     # => "... --- ..."
#   MorseCode.encode("sos sos") # => "... --- ... / ... --- ..."
#
# Bonus:
#   Write another program that can decode morse code
#
#   MorseCode.decode("... --- ...") # => "sos"
#

def alphabet
  {
      'a' => '.-',
      'b' => '-...',
      'c' => '-.-.',
      'd' => '-..',
      'e' => '.',
      'f' => '..-.',
      'g' => '--.',
      'h' => '....',
      'i' => '..',
      'j' => '.---',
      'k' => '-.-',
      'l' => '.-..',
      'm' => '--',
      'n' => '-.',
      'o' => '---',
      'p' => '.--.',
      'q' => '--.-',
      'r' => '.-.',
      's' => '...',
      't' => '-',
      'u' => '..-',
      'v' => '...-',
      'w' => '.--',
      'x' => '-..-',
      'y' => '-.--',
      'z' => '--..',
      '1' => '.----',
      '2' => '..---',
      '3' => '...--',
      '4' => '....-',
      '5' => '.....',
      '6' => '-....',
      '7' => '--...',
      '8' => '---..',
      '9' => '----.',
      '0' => '-----',
  }
end

describe MorseCode do
  describe "encode(string)" do
    alphabet.each do |decoded_letter, encoded_letter|
      it "handles #{decoded_letter}" do
        expect(MorseCode.encode(decoded_letter)).to eq(encoded_letter)
      end
    end

    it "handles single words" do
      expect(MorseCode.encode('sos')).to eq('... --- ...')
    end

    it "handles multiple words" do
      expect(MorseCode.encode('sos sos sos')).to eq(
        '... --- ... / ... --- ... / ... --- ...')
    end
  end

  describe "decode(string)" do
    alphabet.each do |decoded_letter, encoded_letter|
      it "handles #{encoded_letter}" do
        expect(MorseCode.decode(encoded_letter)).to eq(decoded_letter)
      end
    end

    it "handles single words" do
      encoded = '... --- ...'
      decoded = 'sos'
      expect(MorseCode.decode('... --- ...')).to eq('sos')
    end

    it "handles multiple words" do
      encoded = '... --- ... / ... --- ... / ... --- ...'
      decoded = 'sos sos sos'
      expect(MorseCode.decode(encoded)).to eq(decoded)
    end
  end

  it "can decode what it encodes" do
    message = "Happy Birthday"
    expect(
        MorseCode.decode(MorseCode.encode(message))
    ).to match(/#{message}/i)
  end

  it "can decode popular song lyrics that are encoded" do
    message = "99 bottles of beer on the wall"
    expect(
        MorseCode.decode(MorseCode.encode(message))
    ).to match(/#{message}/i)
  end
end