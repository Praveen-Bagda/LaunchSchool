# string = "The Flintstones Rock!"
# iterator = 0

# while iterator < 10
#   puts string.rjust(string.length + iterator)
#   iterator += 1
# end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }