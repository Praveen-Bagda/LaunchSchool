process_the_loop = [true, false].sample

# loop do
#   if process_the_loop
#     puts "The loop was processed."
#   else
#     puts "The loop wasn't processed!."
#   end
#   break
# end

if process_the_loop
  loop do
    puts "The loop was processed."
    break
  end
else
    puts "The loop wasn't processed!."
end
  