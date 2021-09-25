def execute(block)
  block.call
end

execute {puts "Hello from inside the execute method!"}
# block parameter is not correctingly defined in method execute. "&" is missing from block.
