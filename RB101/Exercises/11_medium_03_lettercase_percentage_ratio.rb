# input: string
# output: hash
# rules:
#   Explicit:
#       To write a method that takes a string.
#       It returns a hash that contains three entries.
#         lowercase letters = percentage in float rounded off to 1 digit. 
#         uppercase letter  = percentage in float rounded off to 1 digit.
#         neither           = percentage in float rounded off to 1 digit.
#       We can assume that string will contain 1 character

# Examples / Test Cases
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Data Structure and Algorithm
# Set lowercase and uppercase letters hash.
# Set result_hash = {lowercase: 0, uppercase: 0, neither: 0}
# Set total_chars, upper, lower and neither
# Iterate over the chars of string
#   if it lowercase increase lower, if it is uppercase increase increase
#   otherwise increase neither.
# Change hash values based on percentage. Round it off to 2.
# Return result hash.

def letter_percentages(str)
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ('A'..'Z').to_a


  result_hash = {lowercase: 0, uppercase: 0, neither: 0}

  total_chars = str.size
  lower = 0
  upper = 0
  neither = 0
  str.chars.each do | letter|
    if lowercase_letters.include?(letter)
      lower += 1.0
    elsif uppercase_letters.include?(letter)
      upper += 1.0
    else
      neither += 1.0
    end
  end

  result_hash[:lowercase] = ((lower/total_chars)*100).round(1)
  result_hash[:uppercase] = ((upper/total_chars)*100).round(1)
  result_hash[:neither]   = ((neither/total_chars)*100).round(1)

  result_hash
end
  
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }