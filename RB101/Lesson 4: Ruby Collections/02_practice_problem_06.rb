flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# counter = 0
# 
# flintstones.each do |word|
#   flintstones[counter] = word[0, 3]
#   counter += 1
# end

flintstones.map! { |word| word[0, 3]}

p flintstones