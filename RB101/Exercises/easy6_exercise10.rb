def triangle(integer)
  counter = 1
  loop do
    break if counter > integer
    puts (" " * (integer - counter)) + ("*" * counter)
    counter += 1
  end
end

triangle(15)