flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# a =
# flintstones.bsearch_index do |name|
#   name.start_with?('Be')
# end

# p a

a =
flintstones.index do |name|
  name[0 ,2] == 'Be'
end

p a