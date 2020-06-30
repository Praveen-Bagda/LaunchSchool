def take_block(number, &block)
  block.call(number)
end

take_block(42) do |num|
  puts "Block being called in the method! #{42}"
end