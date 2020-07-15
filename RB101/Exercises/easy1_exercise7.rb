# input: integer
# output: string

# Requirement and Rules
#   - The size of string should be equal to number.
#   - The string should be start from 1.
#   - Its will be alternating sequence like 101010 till number.
#   - The input will always be positive integer. like 1,2,3...

# Test Cases/Examples
#   - stringy(6) == '101010'
#   - stringy(9) == '101010101'
#   - stringy(4) == '1010'
#   - stringy(7) == '1010101'

# Data Structure/ Algorithm:
#   -Determine string.size
#   -Set new array as empty
#   - Do loop nuntil index < number
#     -push index[index] = 1 if index.even is true else index[index] = 0
#   - Join array without space and return it.

# def stringy(number)
#   result_array = []
#   counter = 0

#   loop do
#     break if counter == number
#     if counter.even?
#       result_array[counter] = 1
#     else
#       result_array[counter] = 0
#     end
#     counter += 1
#   end

#   result_array.join
# end

def stringy(number, start_from = 1)
  result_array = []

  number.times do |index|
    if index.even?
      number = start_from
    elsif 
      if start_from == 0
        number = 1
      else
        number = 0
      end
    end 
      
      result_array << number
  end

  result_array.join
end

p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'

p stringy(6, 0)