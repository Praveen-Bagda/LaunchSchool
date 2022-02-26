class Cube
  #attr_reader :volume  

  def initialize(volume)
    @volume = volume
  end

  def volume
    @volume
  end
end

cube1 = Cube.new(5)
# p cube1.instance_variable_get("@volume")
p cube1.volume