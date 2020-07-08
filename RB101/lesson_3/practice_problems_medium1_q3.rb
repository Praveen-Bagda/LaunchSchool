# def factors(number)
#   devisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []

  # loop do
  #   break unless number <= 0
  #   puts "Please enter valid positive number"
  #   number = gets.to_i
  #   divisor = number
  # end

  while divisor > 0
    factors.push(number / divisor) if number % divisor == 0
    divisor -= 1
  end

  p factors
end

puts "What is the input number"
answer = gets.to_i
factors(answer)
