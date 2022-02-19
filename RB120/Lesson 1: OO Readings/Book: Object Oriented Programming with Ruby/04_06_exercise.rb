require 'time'

class MyCar
  attr_accessor :name, :year

  def initialize(name, year)
    self.name = name
    self.year = year
  end

  def age
    puts "Your #{self.name} is #{age_in_years} years old."
  end

  private

  def age_in_years
    Time.now.year - self.year
  end
end

limo = MyCar.new("Maruti Limo", 1977)
limo.age
# p limo.age_in_years
