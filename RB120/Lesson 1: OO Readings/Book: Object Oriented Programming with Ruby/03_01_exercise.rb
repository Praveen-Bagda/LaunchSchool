class MyCar
  attr_accessor :year, :model, :color

  def initialize(y, m, c)
    self.year = y
    self.model = m
    self.color = c
  end

  def self.gas_mileage(current_reading_in_km, previous_reading_in_km, gas_added_in_litre, gas_price_per_liter)
    mileage = (current_reading_in_km - previous_reading_in_km)/(gas_added_in_litre * gas_price_per_liter).to_f
  end
end

my_car_mileage = MyCar.gas_mileage(18900, 18300, 50, 5)

puts "The mileage is #{my_car_mileage} km/L."


  