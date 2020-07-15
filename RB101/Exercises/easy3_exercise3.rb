puts "Please write word or multiple words:"
answer = gets.chomp
# array = answer.chars
# array.reject! do |char|
#   char == ' '
# end
character_count = answer.delete(' ').size

# puts "There are #{array.size} characters in \"#{answer}\"."
puts "There are #{character_count} characters in \"#{answer}\"."
