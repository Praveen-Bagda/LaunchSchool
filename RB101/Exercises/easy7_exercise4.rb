# def swapcase(input_string)
#   input_string.swapcase
# end


# def swapcase(input_string)
#   lowercase_array = ('a'..'z').to_a
#   uppercase_array = ('A'..'Z').to_a 

#   result_string = ''
#   input_string.chars.each do |char|
#     if lowercase_array.include?(char)
#       result_string << uppercase_array[lowercase_array.find_index(char)]
#     elsif uppercase_array.include?(char)
#       result_string << lowercase_array[uppercase_array.find_index(char)]
#     else
#       result_string << char
#     end
#   end

#   result_string
# end

def swapcase(input_string)
  characters = input_string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase')  == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'