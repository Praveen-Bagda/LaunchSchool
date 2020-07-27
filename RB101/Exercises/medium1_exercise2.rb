# require 'pry'
# require 'pry-byebug'

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
  # binding.pry
  first_string = number.to_s[0, (number.to_s.size - rotate_digit)]
  second_string_ary = number.to_s[-rotate_digit, rotate_digit].chars
  second_string = rotate_array(second_string_ary).join

  result << first_string + second_string
  result.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
