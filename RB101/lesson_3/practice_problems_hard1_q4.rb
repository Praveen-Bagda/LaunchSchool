def is_an_ip_number?(word)
  (0..255).include?(word.to_i) && word.to_i.to_s == word
end

def dot_seperated_ip_address?(input_string)
  dot_seperated_words = input_string.split(".")
 return false unless dot_seperated_words.size == 4 
  
  while dot_seperated_words.size > 0 do
    word = dot_seperated_words.pop
      return false unless is_an_ip_number?(word)
    end
  end
  true
end

