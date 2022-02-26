class Cat
  def jump
    "jumping"
  end
end


class Bulldog
  def jump
    "jumping"
  end
end

class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

p bob.pets

p bob.pets[0].jump

bob.pets.each do |pet|
  p pet.jump
end