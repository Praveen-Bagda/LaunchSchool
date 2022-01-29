# input: integer
# output: integer
# rules:
#    Explicit:
#       To return number of Fridays that falls on 13th of given argument year.
#       You may assume year is greater than 1752.

# Examples / Test Cases:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Data Structure and Algorithm.
# Set the no_of_fridays = 0
# Iterate over all the 13th of the given argument year.
#   If the given 13th is friday, increase no_of_fridays by 1.
# Return # of Fridays.

require 'date'

def friday_13th(number)
  sum = 0
  month = 1
  12.times do
    sum += 1 if Date.new(number, month, 13).friday?
    month += 1
  end

  sum
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2