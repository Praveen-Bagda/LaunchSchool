# input: integer
# output: integer
# Rules
#   Explicit
#     To find out difference between :
#         Square of the sum of the first n positive integers.
#           10 => (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)**2 = 3025
#         Sum of the squares of the first n posiive integers.
#           10 => (1**2 + 2**2 + 3**2..10**2) = 385
#     To return the difference. 3025 - 385 == 2640

# Examples / Test Cases
# sum_square_difference(3) == 22
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Data Structure and Algorithm
# Find out square of the sum of the first n positive integers.
# Find out sum of the squares of the first n positive integers.
# Return the difference.

def sum_square_difference(number)
  square_sum = (1..number).to_a.sum ** 2

  squares = (1..number).to_a.map { |num| num ** 2}
  sum_square = squares.sum

  square_sum - sum_square
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150