class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{type} cat"
  end
end

tabby = Cat.new("tabby")
p tabby.to_s
puts tabby

