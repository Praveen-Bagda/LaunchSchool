# input: integer
# output: string
# rules:
#   Explicit:
#     It takes one argument i.e. a positive integer.
#     Returns a new string of alternating 1s and 0s, always starting with 1.
#     The lenght of string should match the given argument integer.

# Examples/Test Cases
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Data Structure / Algorithm:
# SET string = ''
# SET counter = 1
# Argument integer times,
#   if counter is odd 
#     push '1' to string
#   else push '0' to string.
# Increaset counter by 1
# return string. 

def stringy(number)
  string = ''
  counter = 1

  number.times do
    if counter.odd?
      string << '1'
    else
      string << '0'
    end
    counter += 1
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
