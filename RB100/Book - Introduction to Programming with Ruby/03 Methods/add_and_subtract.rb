def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

p add(20, 45)
p subtract(80,10)

def multiply(num1, num2)
  num1 * num2
end

p multiply(add(20, 45), subtract(80, 10))

p add(subtract(80,10), multiply(subtract(20, 6), add(30, 5)))