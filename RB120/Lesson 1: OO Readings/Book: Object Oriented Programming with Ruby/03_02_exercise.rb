require 'pry-byebug'

class MyCar
  attr_accessor :year, :model, :color
      
  def initialize(y, m, c)
    self.year = y
    self.model = m
    self.color = c
  end

  def to_s
    "The car's model is #{self.model}, year is #{self.year} and the color is #{self.color}."
  end
end

maruti = MyCar.new(2022, "Maruti Baleno", "Black")

# binding.pry

# puts maruti.to_s
# The car's model is Maruti Baleno, year is 2022 and the color is Black.
# 

# (puts maruti).to_s

# The car's model is Maruti Baleno, year is 2022 and the color is Black.
# #<MyCar:0x0000561dcd986db8>

puts maruti