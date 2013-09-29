# Encodes and decodes Morse Code

class MorseCode

  def self.encode(string)
    @encode_array = []
    new_string = string.downcase.split(//)
    new_string.each do |char|
      if char == ' '
        @encode_array.push('/')
      else
        @encode_array.push(alphabet.fetch(char))
      end
    end
    @encode_array.join(' ')
  end

  def self.decode(string)
    @decode_array = []
    new_string = string.downcase.split(/\s+/)
    new_string.each do |char|
      @decode_array.push(alphabet.key(char))
    end
    @decode_array.to_s.tr("','' '[]\"", '').gsub('nil', ' ')
  end

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

end
