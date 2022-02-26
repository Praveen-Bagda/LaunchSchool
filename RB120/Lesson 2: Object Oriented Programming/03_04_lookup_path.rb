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

# ::ancestors class method return an array of lookup path. It is important because ruby searches
#   method in that direction for invokation

p Pet.ancestors
p Dog.ancestors
p Cat.ancestors
p BullDog.ancestors