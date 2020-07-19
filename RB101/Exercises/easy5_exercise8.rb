# - Create hash of integers and their English word {'one' => 1}
# - Create keys array of above hash and sort it.
# - Iterete array and store it in result hash for each word
# - Create values hash from above result hash and return it 

def alphabetic_number_sort(input_array)
  word_integer = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
    'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'eleven' => 11,
    'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14, 'fifteen' => 15, 'sixteen' => 16,
    'seventeen' => 17, 'eighteen' => 18, 'nineteen' => 19
  }

  result_hash = {}
  word_array= word_integer.keys
  # word_array.each do |word|
  #   result_hash[word] = word_integer[word]
  # end

  input_array.sort_by { |number| word_array[number]}

  # result_hash.values
end

p alphabetic_number_sort((0..19).to_a)