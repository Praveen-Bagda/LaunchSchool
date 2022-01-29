# input: number
# output: string
# rules
#   To return string in diamond shape.
#   Total number of rows should be equal to number argument.

# Data Structure / Algorithm
# 


def diamond(number)
  counter = number / 2
  number_of_stars = 1
  loop do 
    string = " " * number
    string[counter, number_of_stars] = "*" * number_of_stars
    counter -= 1
    number_of_stars += 2
    puts string
    break if counter < 0
  end

  if number > 1  
    counter = 1
    number_of_stars = number - 2
    loop do
      string = " " * number
      string[counter, number_of_stars] = "*" * number_of_stars
      counter += 1
      number_of_stars -= 2
      puts string
      break if number_of_stars < 0
    end
  end    
end
 
diamond(1)
diamond(9)

diamond(15)


# string = " " * 5
# string[2,1] = "*" * 1
# puts string
# 
# string = " " * 5
# string[1,3] = "*" * 3
# puts string
# 
# string = " " * 5
# string[0,5] = "*" * 5
# puts string
# 
# string = " " * 5
# string[1,3] = "*" * 3
# puts string
# 
# string = " " * 5
# string[2,1] = "*" * 1
# puts string