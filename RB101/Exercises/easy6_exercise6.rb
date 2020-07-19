def merge(array1, array2)
  # (array1 + array2).uniq
  # array1.union(array2)
  array1 | array2
end

a1 = [1, 3, 5]
a2 = [3, 6, 9]

p merge(a1, a2) == [1, 3, 5, 6, 9]