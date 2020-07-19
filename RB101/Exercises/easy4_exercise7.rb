def string_to_integer(string)

  hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, 
    "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

  array = string.chars.map { |element| hash[element]}
  value = 0
  array.each do |digit|
    value = value * 10 + digit
  end

  value
end

p string_to_integer('7879')