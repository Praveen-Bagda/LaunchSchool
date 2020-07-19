def repeater(input_string)
  result = ''
  input_string.chars do |char|
    result += char * 2
  end

  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ""