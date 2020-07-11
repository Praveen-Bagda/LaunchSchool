# 1. # loop do
#   puts 'Just keep printing...'
#   break
# end

# 2. # loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end

#   break
# end

# puts 'This is outside all loops.'

# 3. # iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5 
# end

# 4. # loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
#   puts 'Incorrect answer. Please answer "yes".'
# end

# 5. # say_hello = true
# counter = 1

# while say_hello
#   puts 'Hello!'
#   say_hello = false if counter > 4
#   counter += 1
# end

# 6. # numbers = []

# while numbers.size < 5
#   numbers << rand(100)
# end

# puts numbers

# 7. # count = 1

# until count == 11
#   puts count
#   count += 1
# end

# 8. # numbers = [7, 9, 13, 25, 18]
# index = 0

# until index == numbers.size
#   puts numbers[index]
#   index += 1
# end

# 9. # for i in 1..100
#   puts i if i.odd?
# end

# 10. # friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for name in friends do
#   puts "Hello, #{name}!"
# end

# 11. # count = 1

# loop do
#   puts "#{count} is odd!" if count.odd?
#   puts "#{count} is even!" if count.even?
#   count += 1
#   break if count > 5
# end

# 12. # loop do
#   number = rand(100)
#   puts number
#   # break if (0..10).include?(number)
#   break if number.between?(0, 10)
# end

# 13. # process_the_loop = [true, false].sample

# # loop do
# #   if process_the_loop
# #     puts "The loop was processed!"
# #   else
# #     puts "The loop wasn't processed!"
# #   end
# #   break
# # end

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end

# else
#   puts "The loop wasn't processed!"
# end

# 14. # loop do
#   puts "What does 2 + 2 equal?"
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   end
  
#   puts "Wrong answer. Try again!"
# end

# 15. # numbers = []

# loop do
#   puts 'Enter any number'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end

# p numbers

# 16. # names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   p names.shift
#   # break if names.size == 0
#   break if names.empty?
# end


# 17. # 5.times do |index|
#   p index
#   break if index == 2
# end

# 18. # number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# 19. # number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   p number_a
#   p number_b
#   next unless (number_a == 5) || (number_b == 5)
#   puts "5 was reached!"
#   break
# end

# 20. # def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end