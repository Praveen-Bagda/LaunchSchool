class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts sound
  end

  def sound
    "#{@name} says "
  end
end

class Cow < Animal
  p self  

  def sound
    super + "mooooooooo!"
    p self
  end
end

daisy = Cow.new("Daisy")
daisy.speak