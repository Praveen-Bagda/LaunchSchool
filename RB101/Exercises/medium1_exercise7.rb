# require 'pry'
# require 'pry-byebug'

def word_to_digit(str)
  result = []
  hash = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, 
    "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9 }

    str.split.each do |word|
      # binding.pry
      if hash.keys.include?(word.gsub(/[^a-zA-Z]/, ''))
        key = word.gsub(/[^a-zA-Z]/, '')
        result << hash[key].to_s + word.gsub(/[a-zA-Z]/, '')
      else
        result << word
      end
    end

  result.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.')