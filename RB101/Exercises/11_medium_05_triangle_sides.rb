# input: integer
# output: symbol
# rules
#   Explicit:
#     To return a symbol based on:
#       if the sum of lengths of the two shortest sides is not greater
#         than the longest side OR either of those sides is 0, return
#         invalide
#       if all sides are equal, return equliateral
#       if 2 sides are equal length are 3rd is different, return isosceles
#       is all sides are different, return scalene

# Examples / Test Cases
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# Data Structure and Algorithm
# Save all sides in an array.
# Check array
#   if any of the side is 0 or sum of the minimum 2 sides is less than
#     1 remaining longest side, return invalid
#   if all elements are equal than return equilateral
#   if 2 sides are of equal length, while the 3rd is different, 
#     return isosceles.
#   else return scalene

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  if sides.any?(0) || (sides.min(2).sum < sides.max)
    :invalid
  elsif sides.all? { |side| side == sides.first}
    :equilateral
  elsif isosceles?(sides)
    :isosceles
  else
    :scalene 
  end
end

def isosceles?(array)
  return true if array[0] == array[1]
  return true if array[0] == array[2]
  return true if array[1] == array[2]

  false
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid