# def word_sizes(input_string)
#   array = input_string.split.map { |word| word.size }
#   hash = {}

#   array.uniq.sort.each do |digit|
#   hash[digit] = array.count(digit)
#   end

#   hash
# end

# def word_sizes(input_string)
#   integer_array = (1..100).to_a
#   hash = {}
#   size_array = input_string.split.map do |word|
#     word.size
#   end

#   integer_array.each do |integer|
#     hash[integer] = size_array.count(integer) if size_array.count(integer) > 0
#   end

#   hash
# end


def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end

  counts
end




# p word_sizes('Four score and seven.') == { 3 => 1, 4=> 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3=> 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == {6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}