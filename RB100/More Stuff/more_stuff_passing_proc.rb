def take_proc (tellme)
  [1, 2, 3, 4, 5].each do |number|
    tellme.call number
  end
end

hi = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(hi)