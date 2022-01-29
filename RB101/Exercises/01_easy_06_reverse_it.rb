# input: string
# output: string
# rules
#   Explicit:
#     Takes one argument a string containing one or more words.
#     Return a string with words that contain five or more words reversed.
#     Each input argument consist of only letters and spaces.
#     Spaces should be included only when more than one word is present.

# Examples/Test Cases:
# puts reverse_words('Professional')          == "lanoisseforP"
# puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
# puts reverse_words('Launch School')         == "hcnuaL loohcS"

# Data Structure / Algorithm
#   Split the string and save the return value to words array.
#   SET reverse array = []
#   Iterate over the words array.
#     If words length is more than or equal to 5
#       split the word into characters and reverse and join it.
#       and then insert this new word into reverse array.
#     else, insert the word as it is in reverse array
#   Join reverse array and return it.

def reverse_words(string)
  words = string.split
  reverse_array = []
  words.each do |word|
    if word.length >= 5
      reverse_array.push(word.chars.reverse.join)  
    else
      reverse_array.push(word)
    end
  end

  reverse_array.join(" ")
end

puts reverse_words('Professional')          == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School')         == "hcnuaL loohcS"