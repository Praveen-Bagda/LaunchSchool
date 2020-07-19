def substrings(input_string)
  result_array = []
  counter1 = 0
  counter3 = input_string.size + 1
  loop do
    break if counter1 == input_string.size
    counter2 = 1
    loop do
      break if counter2 == counter3
      result_array << input_string[counter1, counter2]
      counter2 += 1 
    end
    counter1 += 1
    counter3 -= 1
  end

  result_array
end

p substrings('abcde')