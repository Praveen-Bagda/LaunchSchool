def word_lengths(string)
  result_array = []
  string.split.each do |word|
    result_array << word + ' ' + word.size.to_s
  end

  result_array
end

p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious")
p word_lengths("")