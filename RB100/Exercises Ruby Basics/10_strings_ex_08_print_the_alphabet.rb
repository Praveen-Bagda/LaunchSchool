alphabet = 'abcdefghijklmnopqrstuvwxyz'

# counter = 0
# while counter <= alphabet.size - 1
#   puts alphabet[counter]
#   counter += 1
# end

alphabet.each_char { |character| puts character}

puts alphabet.split('')