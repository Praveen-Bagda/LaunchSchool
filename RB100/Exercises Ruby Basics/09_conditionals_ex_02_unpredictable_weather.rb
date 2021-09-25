sun = ['visible', 'hidden'].sample

p sun

puts "The clouds are blocking the sun!" unless sun == 'visible'