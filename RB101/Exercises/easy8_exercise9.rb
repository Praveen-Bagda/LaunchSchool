# def reversed_number(number)
#   number.to_s.reverse.to_i
# end

def reversed_number(number)
  reverse_number = 0
  loop do 
    break if number == 0
    number, remainder = number.divmod(10)
    reverse_number = (reverse_number + remainder) * 10
  end

  reverse_number/10
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21
p reversed_number(12003) == 30021
p reversed_number(1) == 1
p reversed_number(0) == 0