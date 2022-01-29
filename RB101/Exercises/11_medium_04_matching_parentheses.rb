# input: string
# output: boolean 
# rules:
#   Explicit:
#     A method that takes string as argument and return true if 
#       parentheses in the string are properly balanced
#     false otherwise.
#     parenthesis must occur in matching '(' and ')' pairs.

# Examples / Test Cases
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Data Structure and Algorithm.
# sum = 0
# Iterate over the string chars
#   add sum += 1 if char is equal to "(" 
#   deduct sum -= 1 if char is equal to ")"
#   return false if sum is less than 0
# if sum > 0 return false
# return true in the end

def balanced?(str)
  sum = 0
  str.chars.each do |char|
    sum += 1 if char == '('
    sum -= 1 if char == ')'
    return false if sum < 0
  end

  return false if sum > 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
