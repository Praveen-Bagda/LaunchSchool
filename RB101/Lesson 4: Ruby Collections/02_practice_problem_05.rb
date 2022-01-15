flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# index = "Not Found"
# counter = 0
# 
# loop do
#   break if counter == flintstones.size
#   current_word = flintstones[counter]
#   
#   if current_word.start_with?("Be")
#     index = counter
#     break
#   end
# 
#   counter += 1
# end

# index_of_first_be_word = "Not Found"
# flintstones.each_with_index do |name, index|
#   index_of_first_be_word = index if name.start_with?("Be")
# end

index_of_first_be_word = 
flintstones.index do |element|
  element[0, 2] == 'Be'
end



p index_of_first_be_word
