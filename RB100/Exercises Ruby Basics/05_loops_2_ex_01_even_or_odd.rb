count = 1

loop do
  if count.even?
    "puts #{count} is even!"
  else
    puts "#{count} is odd!"
  end
    count += 1
  break if count == 6
end