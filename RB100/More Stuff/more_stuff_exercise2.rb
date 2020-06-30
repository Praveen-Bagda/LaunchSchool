def execute(name = "Praveen", procname)
  procname.call(name)
end

proc_stylish = Proc.new do |name|
  puts "Hello #{name}, how are you?"
end

execute("Ashok",proc_stylish)