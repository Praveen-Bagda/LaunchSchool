# input: integer
# output: integer
# rules
#   Explicit
#     Take a number rotate it left.
#     Keep the first digit fixed and rotate the remaining numbers.
#     Then keep two digits fixed and rotate the remining numbers.
#     Keep doing it until you keep fix 4 numbers and rotate remaining 2 numbers.

# Test Cases / Examples
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# Data Structure / Algorithm:
# Rotate the number and return string
# if # of digits are more than 2:
# Iterate through the number
#   Keep the first number fixed and rotate the remaining number
#   And them and convert them into integer.
#   Do the same process again keeping 2 number fixed now.
#   Do it unless number integer size - 1  numbers are fixed. 
# Return string converted into integer. 

def max_rotation(number)
  result = rotate_array(number.to_s)
  result_array = []
  
  if result.length > 2
    result_array = result.chars
    counter = 1
    loop do
      left_strings = result_array.shift(counter)
      right_strings = rotate_array(result_array.join)
      result_array = left_strings + right_strings.chars
      counter += 1
      break if counter > (result.length - 1)
    end
  result = result_array.join
  end

  result.to_i
end

def rotate_array(string)
    if string.size > 1
      left_strings_array = string.chars.last(string.size-1)
      right_strings_array = string.chars.first(1)
      result_array = left_strings_array + right_strings_array
    else
      result_array = string.chars
    end

  result_array.join
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845








