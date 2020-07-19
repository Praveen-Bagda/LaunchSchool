def double_consonants(input_string)
  result = ''
  input_string.chars.each do |char|
    if char =~ /[a-z&&[^aeiou]]/i
      result += char * 2
    else
      result += char
    end
  end

  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ''