# Card Class

class PlayingCard

  attr_accessor :card_suit, :card_value

  def initialize
    self.card_suit = ''
    self.card_value = ''
  end

  def show_card
    "#{card_value}-#{card_suit}"
  end

  def set_suit(suit)
    self.card_suit = suit
  end

  def set_value(value)
    self.card_value = value
  end

end

class CardDeck < PlayingCard

  initialize
    suits = ['Clubs', 'Diamonds', 'Spades', 'Hearts']
    values = ['A', '2', '3', '4', '5', '6', '7', '8', '9',
               '10', 'J', 'Q', 'K']
    deck = []
  end

  def create_deck
    values.each do |value|
      suit.each do |suit|

        deck.push []


  end
end

