class Cat
  attr_accessor :name

  def initialize(n)
    self.name = n
    puts "Hello! My name is #{self.name}!"
  end
end

kitty = Cat.new('Sophie')