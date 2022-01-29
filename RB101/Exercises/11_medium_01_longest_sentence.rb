# input: string (text file)
# output: string
# rules:
#   Explicit:
#     Write a program that reads the contents of a text file
#     prints the longest sentence in the file based on number of words.
#     Any sequence of characters that are not spaces or sentence-ending
#       characters should be treated as a word.
#     Sentence may end with . or ! or ?

# Examples / Test Cases
# longest_sentence("text1.txt") == 86 
# longest_sentence("text2.txt") == 157

# Data Structure and Algorithm.
# Load the text file.
# Split the text based on four characters and store them in sentences_words array
#   [full stop, question mark or exclamation mark]
# Set longest_sentence = 1 sentence of sentences_words array
# Set size = 1 sentence size
# Iterate through sentences array for each sentence words
#   if sentence.size > sentence   
#     size = sentence.size
#     longest_sentence = sentence
# Return the longest sentence in string and its size.

require 'pry-byebug'

def longest_sentence(filename)
  file = File.open("/home/praveen/Desktop/LaunchSchool/RB101/Exercises/" + filename)
  str = file.readlines(chomp: true).join(" ")

  sentences = str.split(/[.?!]/).map {|e| e.strip}

  longest_sentence = sentences.first 
  longest_sentence_size = longest_sentence.split.size

  sentences.each do |sentence|
    # binding.pry
    if sentence.split.size > longest_sentence_size
      longest_sentence = sentence
      longest_sentence_size = sentence.split.size
    end
  end

  puts "Longest Sentence: #{longest_sentence}" 
  puts "*" * 70
  puts "Total words in longest sentence are: #{longest_sentence_size}"
  puts " "
end

longest_sentence("text1.txt")
longest_sentence("text2.txt")