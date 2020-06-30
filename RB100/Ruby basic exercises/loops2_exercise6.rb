names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  if names.empty?
    break
  end
end


puts names