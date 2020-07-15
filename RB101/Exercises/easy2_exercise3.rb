puts "What is the bill?"
bill_amount = gets.to_f

puts "What is the percentage?"
tip_percentage = gets.to_f

tip_amount = ((bill_amount * tip_percentage)/100).round(2)
total_amount = (bill_amount + tip_amount).round(2) 

puts "The tip is #{sprintf("%.2f", tip_amount)}"
puts "the total is #{sprintf("%.2f", total_amount)}"