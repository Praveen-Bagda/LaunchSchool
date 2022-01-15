ACES = ["Ace of Clubs", "Ace of Diamonds", "Ace of Hearts", "Ace of Spades"]

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
      sum -= 9
      total_ace_this_method -= 1
      break if sum <= 21 || total_ace_this_method <= 0
    end
  end
  sum
end

arr1 = [{"2 of Clubs"=>2}, {"3 of Clubs"=>3}, {"Ace of Clubs" => 10}, {"Ace of Diamonds" => 10}]
arr2 = [{"2 of Clubs"=>2}, {"3 of Clubs"=>3}, {"Ace of Clubs" => 10},
       {"Ace of Diamonds" => 10}, {"Ace of Hearts" => 10},
       {"Ace of Spades" => 10}]
arr3 = [{"10 of Clubs"=>10}, {"Jack of Clubs"=>10}, {"Ace of Clubs" => 10}]
arr4 = [{"10 of Clubs"=>10}, {"Jack of Clubs"=>10}]
p sum_of_cards(arr1)
p sum_of_cards(arr2)
p sum_of_cards(arr3)
p sum_of_cards(arr4)
