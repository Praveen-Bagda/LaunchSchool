module Wheels
  def tire_pressure(tire_index)
    self.tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    self.tires[tire_index] = pressure
  end
end

class Vehicle
  attr_accessor :speed, :heading

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class Auto < Vehicle
  include Wheels
  attr_reader :tires

  def initialize
    # 4 tires are various tire pressures
    super(50, 25.0)
    @tires = [30, 30, 32, 32] 
  end
end

class Motorcycle < Vehicle
  include Wheels
  attr_reader :tires

  def initialize
    # 2 tires are various tire pressures
    super(80, 8.0)
    @tires = [20, 20] 
  end
end

class Catamran < Vehicle
  attr_reader :propeller_count, :hull_count
  attr_accessor :speed, :heading

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end


auto = Auto.new
motorcycle = Motorcycle.new


p auto.range