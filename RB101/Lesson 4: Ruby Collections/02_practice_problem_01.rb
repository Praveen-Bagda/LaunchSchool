flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# counter = 0
# hash = {}
# 
# loop do
#   break if counter == flintstones.size
# 
#   current_word = flintstones[counter]
#   hash[current_word] = counter
# 
#   counter += 1
# end

# index = 0
# 
# hash =
# flintstones.each_with_object({}) do |word, hash|
#   hash[word] = index
#   index += 1
# end

# index = 0
# hash = {}
# 
# flintstones.each do |word|
#   hash[word] = index
#   index += 1
# end

hash = {}
flintstones.each_with_index do |word, index|
  hash[word] = index
end

p hash