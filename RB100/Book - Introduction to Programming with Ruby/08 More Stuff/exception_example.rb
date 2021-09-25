names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} leters in it."
  rescue
    puts "Something went wrong!"
  end
end