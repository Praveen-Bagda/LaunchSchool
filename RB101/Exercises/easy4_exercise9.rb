def integer_to_string(number)
  
  hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 
    4 => '4', 5 => '5', 6 => '6', 7 => '7',
    8 => '8', 9 => '9'
  }
    
  string = ''
  counter = 1

  loop do
    modified_number = number % 10 ** counter
    modified_number = modified_number / 10 ** (counter - 1) if counter > 1
    
    string << hash[modified_number]
    break if number / (10 ** counter) == 0
    counter += 1
  end
  
  string.reverse
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(50)