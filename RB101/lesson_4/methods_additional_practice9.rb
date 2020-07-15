words = "the flintstones rock"

# input: string
# output: string

# Requirements and Rules
#   Explicit:
#     - Evert first letter of the world should be capitalized.
#   Implicit:
#     - Ignored input validation.
#     - New string will be returned.
#     - Assuming sting will have some words (Ignored empty string)
#     - Assuming words will be seperated by single space. (Ignored double space between words.)

# Examples/Test Cases

#   'hi this is good' => 'Hi This Is Good'
#   'Hello World!' => 'Hello World!'
#   "How are you ?" => ;

# Data Structure/Algorithm:
#   - Set result string as empty
#   - Convert string into array of seperate words.
#   - Apply capitalize to each word of array.
#   - Join array with single ' '
#   - Return result string
    
# def titleize(input_string)
#   seperate_words_array = input_string.split
#   seperate_words_array.map do |word|
#     word.capitalize!
#   end
#   result_string = seperate_words_array.join(' ')
#   result_string
# end

# p titleize('hi this is good')
# p titleize('Hello World!')
# p titleize("How are you ?")  

def titleize(input_string)
  input_string.split.map { |word| word.capitalize}.join(' ')
end

p titleize('hi this is good')
p titleize('Hello World!')
p titleize("How are you ?")