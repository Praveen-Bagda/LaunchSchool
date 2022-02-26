class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  # def to_s
  #   temp1 = nil
  #   temp2 = nil

  #   if @filling_type == nil
  #     temp1 = "Plain" 
  #   else
  #     temp1 = @filling_type
  #   end

  #   unless @glazing == nil
  #     temp2 = " with " + @glazing
  #   else
  #     temp2 = @glazing.to_s
  #   end

  #   temp1 + temp2
  # end

  def to_s
    filling_string = @filling_type ? @filling_type : "Plain"
    glazing_string = @glazing ? " with #{@glazing}" : ''
    filling_string + glazing_string
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
puts donut2
puts donut3
puts donut4
puts donut5
