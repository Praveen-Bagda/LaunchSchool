def negative(number)
  # if number > 0
  #   number * -1
  # else
  #   number
  # end

  # number > 0 ? -number : number
  -number.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0