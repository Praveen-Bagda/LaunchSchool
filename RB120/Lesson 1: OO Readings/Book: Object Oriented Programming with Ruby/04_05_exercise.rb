module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    self.color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end


  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def speed_square(number)
    number ** 2
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}"
  end

end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
limo = MyTruck.new(2022, 'Tata limo', 'brown')

p lumina.speed_square(4)
p limo.speed_square(25)

lumina.speed_up(20)
lumina.current_speed

lumina.speed_up(20)
lumina.current_speed

lumina.brake(20)
lumina.current_speed

lumina.brake(20)
lumina.current_speed

lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors