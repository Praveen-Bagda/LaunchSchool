def leading_substrings(input_string)
  result_array = []
  counter = 1
  loop do
    break if counter > input_string.size
    result_array << input_string[0, counter]
    counter += 1
  end

  result_array
end



p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']