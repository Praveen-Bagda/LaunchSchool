# A method that takes an array of strings, 
# and returns a string that is all those strings concatenated together

# CASUAL
# Given a array in method
# Iterate through the array one by one
#   -Save each value with space
# Return the value


#FORMAL
# START
# method (GET)
# SET Result = Nil
# Iterator = 0

# While iterator <= array.size-1
# result = result + array[iterator] + ' '
# iterator += 1
# end
#
# result
# end

# result

def practice_method(array1)
  
  result = '' 
  iterator = 0

  while iterator <= array1.size - 1
    result = result + array1[iterator] + ' '
    iterator += 1
  end

  result
end

puts practice_method(["Hello", "World", "How", "Are", "You"])

