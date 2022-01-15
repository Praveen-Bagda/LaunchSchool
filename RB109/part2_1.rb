# You have to create a method that takes a positive integer number
# and returns the next bigger number formed by the same digits:
# If no bigger number can be composed using those digits, return -1

# input: integer
# output: integer
# rules:
#   - To return the next big number using the same digits.
#   - If no big number can be formed than return -1

# Test Cases
# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21 
# p next_bigger_num(513) == 531 
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798 
# p next_bigger_num(6351) == 6531

# Take the last last 2 digits of that number (if available)
# Sort those 2 numbers in descending order
# Add above sorted numbers to the remaining number.
# If the new number is bigger the input number, return that number
# otherwise repeat steps 1 to 4 by increasing number of digits by 1 each time.
# If no bigger number can be composed return -1

def next_bigger_num(num)
  num = num.to_s.chars
  
  loop do
   arr = num[ 2].sort
   p arr
   break
  end

end

next_bigger_num(6898)