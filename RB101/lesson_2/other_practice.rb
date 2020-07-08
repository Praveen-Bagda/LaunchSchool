# def add_name(arr, name)
#   arr = arr + [name]
#   p arr
# end

# names = ['bob', 'kim']
# add_name(names, 'jim')
# puts names.inspect

# x = 1
# y = 3

# case 
# when (x == 2 && y == 3)
#   puts "This is true"
# else
#   puts "This is false"
# end

# VALID_CHOICES = %w(scissors paper rock lizard spock)
# short_form = []

# VALID_CHOICES.each do |str|
#   short_form.push(str[0..1])
# end

# p short_form

# puts("What is the response?")
# response = Kernel.gets.chomp
# puts response

# a = 2
# b = rand(2)
# puts b

# VALID_CHOICES = %w(scissors paper rock lizard spock)

# short_form = []
# VALID_CHOICES.each do |str|
#   length = 1
#   loop do
#     if short_form.include?(str[0, length])
#       length += 1
#     else 
#       break
#     end
#   end
#   short_form.push(str[0, length])
# end

# short_form_for_full_form = []
# iterator = 0
# while VALID_CHOICES[iterator]
#   short_form_for_full_form.push("#{short_form[iterator]} for #{VALID_CHOICES[iterator]}")
#   iterator += 1
# end



# p short_form_for_full_form

# num = 12
# p num >= 8 && num < 6 || num > 4 && num < 16

# def extend_greeting(greeting)
#   greeting << " there"
# end

# greeting = 'hi'
# extend_greeting(greeting)
# puts greeting

p number == true