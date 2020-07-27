# require 'pry'
# require 'pry-byebug'


def which_lights_are_on(number)
  # lights_array = (1..number).to_a
  # result = lights_array.map {|_| false}
  # # binding.pry
  # counter = 1
  # number.times do
  #   index = counter - 1
  #   lights_array.each do |obj|
  #     result[index] = !result[index] if index <= result.size - 1
  #     index += counter
  #   end
  #   counter += 1
  # end

  # result

  hash = {}
  (1..number).to_a.each do |digit|
    hash[digit] = false
  end    

  # binding.pry
  counter = 1
  number.times do
    index = counter
    hash.each do |_, _|
      hash[index] = !hash[index] if index <= hash.size
      index += counter
    end
    counter += 1
  end

  hash.select{ |_, v| v == true}.keys
end

p which_lights_are_on(5)
p which_lights_are_on(10)