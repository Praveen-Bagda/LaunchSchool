class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# case 1
# hello = Hello.new
# hello.hi # "Hello"

# case 2
# hello = Hello.new
# hello.bye # "Will raise an error. Undefined method 'bye' for Hello object."

# case 3
# hello = Hello.new
# hello.greet # "Will raise an error. Wrong number of arguments. (Given 0, Expected 1)"

# case 4
# hello = Hello.new
# hello.greet("Goodbye") # "Goodbye"

# case 5
# Hello.hi # "Will raise an error. No class method defined. Undefined method 'hi' for Hello:Class"