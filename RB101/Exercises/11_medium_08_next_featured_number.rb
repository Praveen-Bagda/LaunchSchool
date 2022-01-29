# input: integer
# output: integer or string
# rules:
#    Explicit:
#       To return a next featured number.
#         Featured number is a multiple of 7.
#         The digit of featured number occur only once. No duplication.
#         If no next featured number is available, return error message.

# Examples / Test Cases
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Data Structure and Algorithm:
# set result number = 0
# Loop
#   set number = Find the next number in multiple of 7.  
#   return error message if number size is more than 10
#   break if that number is odd AND there are no duplicates digits. 
# return number

require 'pry-byebug'

def featured(number)
  result = number
  error_message = "There is no possible number that fulfills those requirements"
  
  loop do
    result = next_multiple_of_7(result)
    # binding.pry
    return error_message if result.to_s.size > 10 
    break if result.odd? && no_duplicate_digit?(result)
  end

  result  
end

def next_multiple_of_7(number)
  result = number 
  loop do
    result += 1
    break if result % 7 == 0
  end

  result
end

def no_duplicate_digit?(number)
  number.to_s.size == number.to_s.chars.uniq.size
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) == "There is no possible number that fulfills those requirements"
