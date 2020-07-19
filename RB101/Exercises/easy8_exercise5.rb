def substrings(input_string)
  result_array = []
  counter1 = 0
  counter3 = input_string.size + 1
  loop do
    break if counter1 == input_string.size
    counter2 = 1
    loop do
      break if counter2 == counter3
      result_array << input_string[counter1, counter2]
      counter2 += 1 
    end
    counter1 += 1
    counter3 -= 1
  end

  result_array
end

# def palindromes(input_string)
#   substrings_array = substrings(input_string)
#   result_array = []

#   substrings_array.each do |word|
#     working_array = []
#     counter1 = 0
#     counter2 = -1
#     limit = word.size / 2
#     loop do
#       break if counter1 == limit
#       if word[counter1] == word[counter2]
#         working_array << true 
#       else
#         working_array << false
#       end
#       counter1 += 1
#       counter2 -= 1
#     end
#       result_array << word if working_array.all?(true) && word.size > 1
#   end

#   result_array
# end

def palindromes(input_string)
  substrings_array = substrings(input_string)
  result_array = []

  substrings_array.each do |word|
    result_array << word if word == word.reverse && word.size > 1
  end

  result_array
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
