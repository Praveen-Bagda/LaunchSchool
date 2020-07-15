# def palindrome?(input_string)
#   reverse_string = input_string.reverse
#   counter = 0
#   result_array = []

#   while counter < input_string.size
#     if input_string[counter] == reverse_string[counter]
#       result_array << true
#     else
#       result_array << false
#     end
#     counter += 1
#   end

#   result_array.all?(true)
# end

def palindrome?(input_string)
  input_string == input_string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true