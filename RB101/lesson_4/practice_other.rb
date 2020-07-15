# number = 5
# p number == number.to_i

# require 'date'

# puts Date.new
# puts Date.new(2016)
# puts Date.new(2016, 5)
# puts Date.new(2016, 5, 13,)
# puts Date.new(2016, 5, 13, Date::ITALY)

# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6) #> [4,5,3,6]

# a = [1, 4, 8, 11, 15, 19]

# def a_method(array)
#   array.bsearch do |x|
#     x > 8
#   end
# end

# p a_method(a)
# p a

# a = %w(a b c d e)

# # puts a.fetch(7)
# puts a.fetch(7, 'beats me')
# puts a.fetch(7) { |index| index ** 2 }

# 5.step(by: 3, to: 29) { |value| puts value }

# a = [5, 9, 3, 11]
# p a.min(2)

# p 'hello how are you hi'.scan('h')

# a= 
# {
#   "Cameron" => {"age" => 0, "gender" => "male"},
#   "Jessica" => {"age" => 1, "gender" => "female"},
#   "Mariya" => {"age" => 17, "gender" => "female"},
#   "Kati" => {"age" => 18, "gender" => "female"},
#   "Kelsey" => {"age" => 32, "gender" => "female"},
#   "Michael" => {"age" => 64, "gender" => "male"},
#   "Ross" => {"age" => 65, "gender" => "male"},
#   "Grandpa" => {"age" => 101, "gender" => "male"}
# }

# a["Michael"]["age_group"] = 

# if a["Michael"]["age"].between?(0, 17) 
#   "kid"
# elsif a["Michael"]["age"].between?(18, 64)
#   "adult"
# else 
#   "senior"
# end


# p (1..10).to_a


# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!
    
#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# p snake('The sky was blue')
# a = [1, 2, 3, 4, 5]

# b = 
# a.select do |num|
#   num > 10
# end

# p b

# a = ['green', 'red']

# b =
# a.map do |word|
#   puts word
#   word.upcase
# end

# p b

# numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
# odd_numbers, even_numbers = numbers.partition do |number|
#                               number.even?
# end

# p odd_numbers

# a = {
#   'France' => 'Paris',
#   'Belgium' => 'Brussels'
# }

# b =
# a.select do |k, v|
#   k[0] == 'B'
# end

# p b

p true || false

p true && false
p false && false
p true && true