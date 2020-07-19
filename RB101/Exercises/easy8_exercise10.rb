def center_of(input_string)
  start_from = input_string.size / 2

  if input_string.size.odd?
    input_string[start_from]
  else
    input_string[start_from -1 , 2]
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of("Launchschool") == 'hs'
p center_of('x') == 'x'