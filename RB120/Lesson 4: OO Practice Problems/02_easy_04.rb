class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"
  end
end

beeswax = BeesWax.new('redwood tree type')
beeswax.describe_type

