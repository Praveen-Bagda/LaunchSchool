def uppercase?(string)
  # string.chars.each do |char|
  #   return false unless char == char.upcase
  # end

  # true

  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true