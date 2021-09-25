colors = 'blue pink yellow orrange'

def include_word?(word, string)
  if string.split(" ").include?(word)
    puts true
  else
    puts false
  end
end

include_word?('yellow',colors)
include_word?('purple', colors)

puts colors.include?('yellow')
puts colors.include?('purple')