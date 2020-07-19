# def swap(string)
#   array = string.split.map do |word|
#     if word.size > 1
#       word[-1] + word[1..-2] + word[0]
#     else
#       word
#     end
#   end
#   array.join(' ')
# end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  array = string.split.map do |word|
    swap_first_last_characters(word)
  end
  array.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'