#input: string
#output: string
#rules:
# Explicit:
#   A method that takes one argument, a string, and returns a new string
#    with the words in reverse ordder.
#   If the argument string contains only many spaces, the retruned new string 
#    should contain only single space. (i.e. '') 

# Test Cases
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Data Structure/Algorithm
# Split the string based on space. It will return a new arrary.
# Reverse the above array and join by space to retrun new string.
# Print new string.

def reverse_sentence(string)
  string.split.reverse.join(" ")
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''