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

class Noble < Person
  attr_reader :title
  include Walkable

  def initialize(name, title)
    super(name)
    @title = title
  end

  def walk
    "#{self.title} #{self.name} #{self.gait} forward"
  end

  private

  def gait
    "struts"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk

p byron.name
p byron.title
