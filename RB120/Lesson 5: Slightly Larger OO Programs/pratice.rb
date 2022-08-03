def total
  sum = 0
  cards.each { |card| sum += card.value }

  ace_count = cards.count { |card| card.face =~ /Ace /}
  loop do
    if ace_count > 0 && (sum + 10) <= 21
      sum += 10
      ace_count -= 1
      break if count <= 0
    else
      break
    end
  end
  sum
end

