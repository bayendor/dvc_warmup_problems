class WordFinder

  def initialize
    @letter_array = []
  end


  def add_word(word)
    word.each_char{ |char| @letter_array.push(char) }
    @letter_array
  end


  # attr_accessor :game

  # def initialize
  #   self.game = []
  # end

  # def load_game(filename, game_number)
  #   filename = File.join(File.dirname(__FILE__), filename) # Via JN
  #   index_number = (game_number * 10) - 9
  #   game_file = File.read(filename).to_s.split("\n")
  #   (index_number..index_number + 8).each do
  #     |game_line| game.push(game_file[game_line].split(""))
  #   end
  # end

end