# input: string
# output: string
# rules:
#   Explicit:
#     Take a string as input and return a same string with any sequence
#     of the words converted to a string of digits.

# Examples / Test Cases
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data Structure / Algorithm
# Create a hash with the data structure {"one"=> "1", "two" => "2"}
# Check the string. If it contains any of the above hash keys, replace
#   that word with key value.
# Return the string

NUMBERS = {
  "one"   => "1",
  "two"   => "2",
  "three" => "3",
  "four"  => "4",
  "five"  => "5",
  "six"   => "6",
  "seven" => "7",
  "eight" => "8",
  "nine"  => "9",
  "zero"  => "0"
}

def word_to_digit(string)
  NUMBERS.each_key do |element|
    if string.include?(element)
      string.gsub!(/\b#{element}\b/, NUMBERS[element])
    end
  end

  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


