# - Split string
# - Iterate above array for each word
#     loop 
      # break if counter = word.size 
#     string << word[0]
#     string[counter] += string[counter] if string[-1] != nil || 
#     counter += 1
#   end
# - push string into result array
# end

# result.array.join(' ')
# end

    
def crunch(input_string)
  word_array = input_string.split
  result_array = []
  

  word_array.each do |word|
    result_word = ''
    counter = 0
    loop do
      break if counter == word.size
      result_word += word[counter] if word[counter] != result_word[-1]
      counter += 1 
    end
    
    result_array << result_word
  end

  result_array.join(' ')
end

# def crunch(input_string)
#   result_string = ''
#   counter = 0

#   while counter <= input_string.size - 1
#     result_string << input_string[counter] if input_string[counter] != input_string[counter + 1]
#     counter += 1
#   end

#   result_string
# end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
