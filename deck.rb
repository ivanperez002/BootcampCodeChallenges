class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
      @rank = rank
      @suit = suit
  end

  def output_card
      puts "#{self.rank} of #{self.suit}"
  end
end

class Deck

  def initialize
    @rank = [*(2..10), "J", "Q", "K", "A"]
    @suit = ["Spades", "Clubs", "Hearts", "Diamonds"]
    @card = []

    @rank.each do |rank|
      @suit.each do |suit|
        @card << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @card.shuffle!
  end

  def deal(number)
    n = 0
    
    while n < number
      @card.shift.output_card
      n += 1
    end
  end
end

deck = Deck.new
deck.shuffle
deck.deal(3)


