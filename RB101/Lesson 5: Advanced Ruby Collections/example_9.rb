return_value =
[[[1], [2], [3], [4]], [['a'], ['b'], ['c'], ['d']]].map do |element1|
  element1.map do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
    
p return_value