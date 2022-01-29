# input: number
# output: array
# rules
#   Explict:
#     You have number(argument) of switches. They are off at intial.
#     There will number(Argument) of repitions. On/off depending on the
#       previous state.
#     First repetion will start at 1 and difference will be 1.
#     Second repetion will start at 2 and difference will be 2.
#     Third repetion will start  at 3 and difference will be 3 and so on.
#     We do above until number(argument) of repetions are done.
#     At last, to return array containing switches that are on.

# Examples / Test Cases
# switch_on_lights(5) == [1, 4]
# switch_on_lights(10) == [1, 4, 9]

# Data Structure and Algorithm.
# Create a hash named 'lights'
#   With 1..n(argument) as keys.
#   And all keys value should be false.
# Set counter = 1
# Number of times:
#   Iterate through the lights hash.
#   If counter value is in the hash, change it to opposite.
#   Increase counter by counter  
#   break if counter > hash elements.
# counter += 1
# Return array containing only those key values whose value is true

require 'pry-byebug'

def switch_on_lights(number)
  lights = (1..number).to_a.to_h {|e| [e, false]}

  number.times do |idx|
    counter = idx + 1  
    loop do
      lights[counter] = !lights[counter] if lights.key?(number)
      # binding.pry
      counter += idx + 1 
      break if counter > lights.size
    end
  end

  lights.select {|_, v| v == true}.keys
end

p switch_on_lights(5)
p switch_on_lights(10)
p switch_on_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]


