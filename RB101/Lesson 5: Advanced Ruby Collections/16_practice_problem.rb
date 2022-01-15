characters = ('0'..'9').to_a + ('a'..'f').to_a
p characters

uuid = ''
array = [8,4,4,4,12]

array.each_with_index do |num, index|
  num.times { uuid += characters.sample}
  uuid += '-' unless index == array.size - 1
end

p uuid
