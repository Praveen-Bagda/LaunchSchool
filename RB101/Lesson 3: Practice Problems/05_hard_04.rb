def dot_seperated_ip_address(input_string)
  dot_seperated_words = input_string.split(".")

  if dot_seperated_words.size != 4
    return false
  else
    while dot_seperated_words.size > 0 do
      word = dot_seperated_words.pop
      return false unless is_an_ip_number?(word)
    end
  end

  true
end

def is_an_ip_number?(word)
  word.to_i >= 0 && word.to_i <= 255
end

p dot_seperated_ip_address("255.255.255.255")
p dot_seperated_ip_address("1.1.1.1")
p dot_seperated_ip_address("1.2.3.4.5")
p dot_seperated_ip_address("21.54.21")
p dot_seperated_ip_address("454.787.79.978")
p dot_seperated_ip_address("45.89.65.12")
