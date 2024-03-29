class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Pet
  def speak
    "Meow"
  end
end

class BullDog < Dog
  def swim
    "can't swim!"
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = BullDog.new

p pete.run
# p pete.speak

p kitty.run
p kitty.speak
# p kitty.fetch

p dave.speak

p bud.run
p bud.swim
