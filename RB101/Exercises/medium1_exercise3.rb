def rotate_array(ary)
  result = []
  counter = 1
  loop do
    break if counter >= ary.size
    result << ary[counter]
    counter += 1
  end

  result.push(ary[0]) if ary.size >= 1
  result
end

def rotate_rightmost_digits(number, rotate_digit)
  result = ''
  first_string = number.to_s[0, (number.to_s.size - rotate_digit)]
  second_string_ary = number.to_s[-rotate_digit, rotate_digit].chars
  second_string = rotate_array(second_string_ary).join

  result << first_string + second_string
  result.to_i
end

def max_rotation(number)
  counter = number.to_s.size
  loop do
    break if counter <= 1
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845