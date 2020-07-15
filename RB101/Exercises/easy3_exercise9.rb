# data structure/algorithm
#   - take input string and convert it to downcase.
#   - Evaluate each char of string it is from (a..z) or (0..9)
#     then push char in modified string.
#   - compare modified string with reverse modified string.
#   - output result
  
# def real_palindrome?(input_string)
# input_string.downcase!
# modified_string = ''
# counter = 0
# data_array = ('0'..'9').to_a + ('a'..'z').to_a
# while counter < input_string.size
#   modified_string << input_string[counter] if data_array.include?(input_string[counter])
#   counter += 1
# end

# modified_string == modified_string.reverse
# end

# def real_palindrome?(input_string)
#   string = input_string.downcase.gsub(/[^a-z0-9]/,'')
#   string == string.reverse
# end

def real_palindrome?(input_string)
  string = input_string.downcase.delete('^a-z0-9')
  string == string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false


