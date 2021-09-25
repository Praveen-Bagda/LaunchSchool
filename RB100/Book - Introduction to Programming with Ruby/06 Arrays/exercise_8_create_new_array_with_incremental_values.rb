arr = [10, 20, 30, 40, 50]

# new_arr = 
# arr.map { |num| num + 2}

new_arr = []

arr.each { |num| new_arr.push(num + 2)} # new_arr << n + 2

p arr
p new_arr