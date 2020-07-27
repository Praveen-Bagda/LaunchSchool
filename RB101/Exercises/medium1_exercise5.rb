# require 'pry'
# require 'pry-byebug'


def diamond(number)
  space_times = number / 2
  star_times = 1

  loop do 
    puts (" " * space_times) + ("*" * star_times) + (" " * space_times)
    break if star_times >= number
    space_times -= 1
    star_times += 2
  end
  # binding.pry

  loop do 
    space_times += 1
    star_times -= 2
    break if star_times < 0
    puts (" " * space_times) + ("*" * star_times) + (" " * space_times)
  end

end

diamond(8)