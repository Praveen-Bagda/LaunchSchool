puts ">> Please enter an integer greater than 0:"
number = gets.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product"
answer = gets.chomp

# if answer == 's'
#   sum = (1..number).reduce(:+)
#   puts "The sum of the integers between 1 and #{number} is #{sum}"
# elsif answer == 'p'
#   product = (1..number).reduce(:*)
#   # 1
#   # (1..number).to_a.each do |num|
#   # product *= num
#   # end
#   puts "The product of the integers between 1 and #{number} is #{product}"
# end


if answer == 's'
  sum = 0
  1.upto(number) { |i| sum += i}
  puts "The sum of the integers between 1 and #{number} is #{sum}"
elsif answer == 'p'
  product = 1
  1.upto(number) { |i| product *= i}
  puts puts "The product of the integers between 1 and #{number} is #{product}"
end