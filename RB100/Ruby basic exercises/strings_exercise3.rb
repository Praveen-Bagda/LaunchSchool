name = 'Roger'

if name.downcase == 'RoGer'.downcase then  puts true
else                                       puts false
end

if name.downcase == 'DAVE'.downcase then  puts true
else                              puts false
end

puts name.casecmp("RoGeR")
puts name.casecmp("Roge")