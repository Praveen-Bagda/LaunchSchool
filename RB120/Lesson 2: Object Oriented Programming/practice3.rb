class Bulldog
  def speak
    "bark!"
  end

  def fetch
    "fetching!"
  end
end

class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")
bob.pet = Bulldog.new

p bob.pet
p bob.pet.class

p bob.pet.speak
p bob.pet.fetch