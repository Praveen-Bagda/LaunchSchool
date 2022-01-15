statement = "The Flintstones Rock"

# input: string
# output: hash
# rules:
#   Explicit
#     - To create a NEW hash containing containing alphabets
#       as keys and their counts in string as values.
#     - alphabets are case-sensitive. ('r' != 'R')
#   Implicit
#     - To return empty hash when there is empty string.

# alphabet_count("hello How") == {'h' => 1, 'e' => 1, 'l' => 2, 'o' => 2, 'H' => 1, 'w' => 1 }
# alphabet_count("") == {}

# 1.  Set alphabet_count_hash = {}
# 2.  Evaluate alphabet
#     - If its space, ignore it (don't insert it), otherwise
#     - if alphabet alreays exisits in the hash, increase its value by 1
#       otherwise insert it in the hash with value 1.
# 3.  Repeat step 2 until all the alphabets are done.
# 4.  Return the alphabet_count_hash.


def alphabet_count(string)
  alphabet_count_hash = {}
  counter = 0

  loop do
    break if counter == string.size
    current_alphabet = string[counter]

    if current_alphabet == ' '    
    elsif alphabet_count_hash.key?(current_alphabet)
      alphabet_count_hash[current_alphabet] += 1
    else
      alphabet_count_hash[current_alphabet] = 1
    end

    counter += 1
  end

  alphabet_count_hash
end


p alphabet_count("hello How") == {'h' => 1, 'e' => 1, 'l' => 2, 'o' => 2, 'H' => 1, 'w' => 1 }
p alphabet_count("") == {}
p alphabet_count(statement)

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
p alphabet_count(statement) == result
