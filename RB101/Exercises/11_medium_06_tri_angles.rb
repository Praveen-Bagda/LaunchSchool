# input: integers 
# output: symbol
# rules:
#   Explicit:
#       To return either invalid, obtuse, right or acute symbol.
#       If the sum of angles is not 180 or either of the angle is less
#         than equal to 0, return invalid.
#       If its valid and any angle is greater than 90, than return
#         obtuse
#       If its valid and any angle is equal to 90, than return
#         right
#       If its valid and all angles are less than 90, than return
#         acute

# Examples / Test Cases
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# Data Structrue and Algorithm
# Push all the angle degrees into angles array.
# Apply if
#   array sum != 180 or any angle is less than equal to 0
#     return :invalid
#   Any angle is greater than 90, return :obtuse
#   Any angle is equal to 90, return :right
#   otherwise return :acute

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if (angles.sum != 180) || (angles.any? {|e| e <= 0})
    :invalid
  elsif angles.any? {|e| e > 90}
    :obtuse
  elsif angles.any? {|e| e == 90}
    :right
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid


 
