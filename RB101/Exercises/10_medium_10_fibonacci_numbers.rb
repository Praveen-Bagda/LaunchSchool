# input: number
# output: number
# rules:
#   Explicit:
#     To return a last digit of fibonacci series number based on input argument.
#     Fibonacci series is (1, 1, 2, 3, 5....)

# Examples/Test Cases
# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# Data Structure / Algorithm
# Prepare a fibonnaci series upto n(argument) number in an array
#   First two elements of that array will be 1.
#   Third element will be array (3-1) + array (3 - 2),
#   Fourth element will be array (4-1) + array (4 - 2) and so on...
#   Do it until array contains n(argument) elements.
# Return the last number of that series 

# def fibonacci_last(number)
#   return 1 if number <= 2
# 
#   fibonacci_series = []
#   fibonacci_series.push(1,1)
#   index = 2
#   loop do
#     fibonacci_series[index] = fibonacci_series[index - 1] + fibonacci_series[index - 2] 
#     index += 1
#     break if index >= number
#   end
# 
#   return_last_digit(fibonacci_series.last)
# end
# 
# def return_last_digit(number)
#   return number if number.to_s.size <= 1
#   
#   number.to_s[-1].to_i
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last % 10, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4