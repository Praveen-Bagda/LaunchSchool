class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    self.first_name = parts.first 
    self.last_name = parts.size > 1 ? parts.last : "" 
  end

  def name 
    "#{self.first_name} #{self.last_name}".strip
  end
end

bob = Person.new("Robert")
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = "Smith"
p bob.name