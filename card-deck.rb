class Card 
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(13), :spades)
  end
end

class Deck

  def initialize
    @cards = []
    @ranks = [:Ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, :Jack, :Queen, :King]
    @suits = [:Hearts, :Diamonds, :Spades, :Clubs]

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def ranks
    puts @ranks
    puts "Here are the rank of the cards"
  end

  def suits
    puts @suits
    puts "Here are the suits of the cards"
  end

  def cards
    puts @cards
    puts "Here is the deck of cards"
  end

  def output
    @cards.each do |card|
      card.output_card
    end
    return "Here's your deck of cards"
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    top_card = @cards.shift
    top_card.output_card
  end

  def shuffle_and_deal
    self.shuffle
    self.deal
  end
end

deck = Deck.new

deck.shuffle_and_deal