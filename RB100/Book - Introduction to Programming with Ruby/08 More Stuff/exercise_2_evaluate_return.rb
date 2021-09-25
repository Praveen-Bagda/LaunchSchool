def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# => It will not print anything because we have not called the block at the time of method definition.
# => Method returns a proc.

p execute { puts "Hi"}