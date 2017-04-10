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
    Card.new(rand(10), :spades)
  end
end

class Deck
	
	def initialize
		# Builds a deck of cards
		@deck_of_cards = []
			ranks = [:Ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, :Jack, :Queen, :King]
			suits = [:Hearts, :Diamonds, :Spade, :Clubs]

		# Loops through and pairs rank with suit creating a deck
		ranks.each do |rank|
			suits.each do |suit|
				@deck_of_cards << Card.new(rank, suit)
			end
		end
	end

	# Defines a rank
	def rank
		@ranks
	end

	# Defines a suit
	def suit
		@suits
	end

	#Defines a deck of cards
	def deck_of_cards
		@deck_of_cards
	end

	def shuffle
		@deck_of_cards.shuffle!
	end

	def deal
		top_card = @deck_of_cards.shift
			puts "#{top_card.rank} of #{top_card.suit}"
	end

	def ouput	
		@deck_of_cards.each do |card|
			card.output_card
		end
	end
end	

deck = Deck.new
#Show deck number
#puts deck
#Show deck rank
#puts deck.rank
#Show deck suit
#puts deck.suit
#Show deck of cards => Does not ouput blended @ranks & @suits
#puts deck.deck_of_cards
#Shuffles and shows the deck of cards
#puts deck.shuffle
#Deals the top card off the deck => Outputs actual ranks and suit
#puts deck.deal
#Shuffles the deck and outputs the top card => Not working
#puts deck.shuffle.deal