module Walkable
  def walk
    "#{self.name} #{self.gait} forward"
  end
end

class Person
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  private

  def gait
    'strolls'
  end
end

class Cat
  attr_reader :name
  include Walkable


  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Walkable

  
  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
p mike.walk


kitty = Cat.new("Kitty")
p kitty.walk

flash = Cheetah.new("Flash")
p flash.walk

