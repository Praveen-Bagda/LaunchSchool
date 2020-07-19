def string_to_integer(input_string)
  hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, 
    "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

  array = input_string.chars.map { |char| hash[char]}
  value = 0
  array.each do |digit|
    value = value * 10 + digit
  end

  value
end

def string_to_signed_integer(input_string)
  string = ''
  if input_string[0] == '+' || input_string[0] == '-'
    string = input_string[-(input_string.size - 1), input_string.size - 1]
  else
    string = input_string
  end

  return -1 * string_to_integer(string) if input_string[0] == "-"
  string_to_integer(string)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100