require 'pry-byebug'

SUITS = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
RANKS = ('2'..'10').to_a + ['Jack', 'Queen', 'King', 'Ace']
VALUES = (2..10).to_a + [10, 10, 10, 11]
ACES = ["Ace of Clubs", "Ace of Diamonds", "Ace of Hearts", "Ace of Spades"]

def initiate_deck
  deck = []
  index = 0
  SUITS.each do |suit|
    value_index = 0
    RANKS.each do |rank|
      deck.push({"#{rank} of #{suit}" => VALUES[value_index]})
      index += 1
      value_index += 1
    end
  end
  deck
end
 
def prompt(msg)
  puts "=> #{msg}"
end

def delete_from_deck(deck, player_or_dealer_cards)
  deck.delete_if do |element|
    whether_delete = false
    player_or_dealer_cards.each do |card|
      whether_delete = true if card == element
    end
    whether_delete
  end
end

def cards_string(player_or_dealer_cards)
  string = ''
  counter = 0
  player_or_dealer_cards.each do |card_with_value|
    card_with_value.each_key do |card|
      string += "#{card},  " if counter <= player_or_dealer_cards.size - 2
      string += "#{card}"    if counter == player_or_dealer_cards.size - 1
    end
    counter += 1
  end

  string
end

def total_ace(player_or_dealer_cards)
  count_ace = 0
  player_or_dealer_cards.each do |card_with_value|
    card_with_value.each_key do |card|
      ACES.each do |ace|
        count_ace += 1 if ace == card
      end
    end
  end
  count_ace 
end

def sum_of_cards(player_or_dealer_cards)
  sum = 0
  player_or_dealer_cards.each do |card_with_value|
    card_with_value.each_value { |v| sum += v}
  end

  total_ace_this_method = total_ace(player_or_dealer_cards)
  if sum > 21 && total_ace_this_method > 0
    loop do
      sum -= 10
      total_ace_this_method -= 1
      break if sum <= 21 || total_ace_this_method <= 0
    end
  end
  sum
end

loop do
  system 'clear' 
  deck = initiate_deck 
  prompt "Welcome to Twenty-One!!" 
  puts "" 
  
  player_cards = deck.sample(2)
  prompt "Your cards are: #{cards_string(player_cards)}. And the sum is: #{sum_of_cards(player_cards)}"
  delete_from_deck(deck, player_cards)

  dealer_cards = deck.sample(2)
  delete_from_deck(deck, dealer_cards)
  prompt "Dealer has #{cards_string(dealer_cards.sample(1))} and unknown card."
  puts ""

  loop do
    hit_or_stay = ''
    loop do
      prompt "Your turn: Enter 1 for hit and 2 for stay."
      hit_or_stay = gets.chomp.to_i
      break if hit_or_stay == 1 || hit_or_stay == 2
      prompt "Invalid choice."
    end

    if hit_or_stay == 1
      player_cards += deck.sample(1) 
      delete_from_deck(deck, player_cards)  
      prompt "Now your cards are: #{cards_string(player_cards)}. And the sume is #{sum_of_cards(player_cards)}"
    end

    if sum_of_cards(player_cards) > 21
      prompt "You are busted!! Dealer Won!!"
      break
    end
  
    break if hit_or_stay == 2
  end 

  if sum_of_cards(player_cards) < 21
    loop do 
      break if sum_of_cards(dealer_cards) >= 17
      dealer_cards += deck.sample(1)  
      delete_from_deck(deck, dealer_cards)
    end

    prompt "Dealer cards are: #{cards_string(player_cards)}. And the sum is: #{sum_of_cards(dealer_cards)}"

    if sum_of_cards(dealer_cards) > 21
       prompt "Dealer busted!! You won!!"
    elsif sum_of_cards(dealer_cards) > sum_of_cards(player_cards)
      prompt "Dealer Won!!"
    elsif sum_of_cards(player_cards) > sum_of_cards(dealer_cards)
     prompt "You Won!!"
    elsif sum_of_cards(dealer_cards) == sum_of_cards(player_cards)
      prompt "Its a tie!!"
    end
  end

  prompt "Play again?"
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt "Thank you for playing Twenty-One!! Good Bye!!"