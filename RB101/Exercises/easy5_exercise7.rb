# def word_sizes(word_string)
#   counts = Hash.new(0)
#   array = word_string.split.map do |word|
#     word.gsub(/[^a-z]/i, '').size
#   end

#   array.each do |digit|
#     counts[digit] += 1
#   end

#   counts
# end

def word_sizes(word_string)
  counts = Hash.new(0)
  word_string.split.each do |word|
    cleaned_word = word.delete('^a-zA-Z')
    counts[cleaned_word.size] += 1
  end

  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3}
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1}
p word_sizes('') == {}