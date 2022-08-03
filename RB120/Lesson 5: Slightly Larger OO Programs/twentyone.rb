require 'pry-byebug'
# Twenty-One is a card game consisting of a dealer and a player, where the participants
#   try to get as close to 21 as possible without going over.

# Here is an overview of the game:
# - Both participants are initially dealt 2 cards from a 52-card deck.
# - The player takes the first turn, and can "hit" or "stay".
# - If the player busts, he loses. If he stays, it's the dealer's turn.
# - The dealer must hit until his cards add up to at least 17.
# - If he busts, the player wins, If both player and dealer stays, then the highest total wins.
# - If both are equal, then it's a tie, and nobody wins.

# Nouns: card, player, dealer, participant, deck, game, total
# verbs: deal, hit, stay, busts

# Player
# - hit
# - stay
# - busted?
# - total
# Dealer
# - hit
# - stay
# - busted?
# - total
# - deal (should this be here, or in Deck?)
# Participant
# Deck
# - deal (should this be here, on in Dealer?)
# Card
# Game
# - start

class Participant
  attr_reader :cards

  def initialize
    @cards = []
  end

  def deal(deck)
    cards << deck.pop(2)
    cards.flatten!
  end

  def hit(deck)
    cards << deck.pop
  end

  def stay
  end

  def busted?
    total > 21
  end
    
  def total
    sum = 0
    cards.each { |card| sum += card.value }

    ace_count = cards.count { |card| card.face =~ /Ace /}
    loop do
      if ace_count > 0 && (sum + 10) <= 21
        sum += 10
        ace_count -= 1
      else
        break
      end
    end
    sum
  end

end

class Player < Participant
end

class Dealer < Participant
end

class Deck
  RANKS = ["Ace"] + ('2'..'10').to_a + ["Jack", "Queen", "King"]
  SUITS = ["Clubs", "Diamonds", "Hearts", "Spades"]
  VALUES = (1..10).to_a + [10, 10, 10]

  attr_reader :cards

  def initialize
    @cards = []
    
    SUITS.each do |suit|
      index = 0
      RANKS.each do |rank|
        @cards << Card.new("#{rank} of #{suit}", VALUES[index])
        index += 1
      end
    end
  end
end

class Card
  attr_reader :face, :value

  def initialize(face, value)
    @face = face
    @value = value
  end

  def to_s     
    face
  end
end

class Game
  attr_reader :player, :dealer, :deck
  
  def initialize
    system 'clear'
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new.cards
  end

  def deal_cards
    deck.shuffle!
    player.deal(deck)
    dealer.deal(deck)
  end

  def show_initial_cards
    # binding.pry
    puts "Dealer has: #{dealer.cards[0].face} and unknown card."
    puts "You have: #{player.cards.join(", ")}. And the total is #{player.total}."
  end

  def player_turn
    choice = nil
    loop do
      loop do
        puts "Do you want to 'hit' or 'stay'? Please press 1 for 'hit' or '2' for stay."
        choice = gets.chomp.to_i
        break if (choice == 1) || (choice == 2)  
        puts "Sorry...Invalid Choice." 
      end

      if choice == 1 
        player.hit(deck)
        puts "You have: #{player.cards.join(", ")}. And the total is #{player.total}."
        if player.busted?
          puts "You are busted!!. You lose!!"
          break
        end
      elsif choice == 2
        player.stay
        break
      end
    end
  end

  def dealer_turn
    loop do
      break if player.busted?

      if dealer.total < 17
        dealer.hit(deck)
        puts "Dealer has: #{dealer.cards.join(", ")}. And the total is #{dealer.total}."
        if dealer.busted?
          puts "Dealer busted!! You won!!"
          break
        end
      else
        dealer.stay
        break
      end
    end
  end

  def show_result
    if player.busted? == false && dealer.busted? == false
      if player.total > dealer.total
        puts "Dealer has: #{dealer.cards.join(", ")}. And the total is #{dealer.total}."
        puts "You won!!"
      elsif dealer.total > player.total
        puts "Dealer has: #{dealer.cards.join(", ")}. And the total is #{dealer.total}."
        puts "Dealer won!!"
      else
        puts "Dealer has: #{dealer.cards.join(", ")}. And the total is #{dealer.total}."
        puts "It's a tie!!"
      end
    end
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
  end
end

Game.new.start
