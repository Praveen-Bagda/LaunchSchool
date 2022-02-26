module Taste
  def flower(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# Orange = [Orange, Taste, Object, Kernel, BasicObject]
# HotSauce = [HotSauce, Taste, Object, Kernel, BasicObject]

p Orange.ancestors
p HotSauce.ancestors