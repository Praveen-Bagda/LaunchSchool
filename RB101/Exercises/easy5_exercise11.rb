a = ['hello', 'world']
p a.object_id
p a

def spin_me(array)
  array.each do |word|
    word.reverse!
  end
end

p spin_me(a).object_id
p a.object_id
p a 