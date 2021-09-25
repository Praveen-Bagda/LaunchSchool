a = [ 'white snow', 'winter wonderland', 'melting ice',
      'slippery sidewalk', 'salted roads', 'white trees']

a = 
a.map do |string|
  string.split
end.flatten

a = a.flatten

p a