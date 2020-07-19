def integer_to_string(number)

  array = ('0'..'9').to_a
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(array[remainder])
    break if number == 0
  end

result
end


def signed_integer_to_string(number)
  if number < 0
    '-' + integer_to_string(number * -1)
  elsif number > 0
    '+' + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'