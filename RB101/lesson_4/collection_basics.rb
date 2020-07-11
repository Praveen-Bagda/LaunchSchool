# str = 'abcdefghi'

# puts str[2]
# puts str[2, 3][0]

# p str.slice(2)
# puts str.slice(2, 3).slice(0)

# str = 'The grass is green'
# p str[4, 5]
# p str.slice(4, 5)

# arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

# p arr[2]
# p arr.slice(2)

# p arr[2, 3][0]
# p arr.slice(2,3).slice(0)

# arr = [1, 'two', :three, '4']
# p arr.slice(3,1)
# p arr.slice(3..3)
# p arr.slice(3)
# p arr.slice(0)

# hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }
# p hsh['fruit'][0]
# p hsh.slice('fruit', 'vegetable')

# hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
# p hsh['fruit'][0]
# p hsh

# hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'pear' => 'fruit'}
# p hsh['apple'][0]
# p hsh

# country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin'}
# p country_capitals.keys
# p country_capitals.values
# p country_capitals.values[0]


# str = 'abcde'
# arr = ['a', 'b', 'c', 'd', 'e' ]


# p str[5]
# p arr[5]

# arr = [3, 'd', nil]
# p arr.fetch(2) 
# p arr.fetch(3)

# str = 'abcde'
# arr = ['a', 'b', 'c', 'd', 'e' ]

# p str[-2]
# p arr[-2]

# str = 'ghijk'
# arr = ['g', 'h', 'i', 'j', 'k']

# p str[-6]
# p arr.fetch(-6)

# hsh = { :a => 1, 'b' => 'two', :c => nil}

# p hsh['b']
# p hsh[:c]
# p hsh['c']
# p hsh[:d]

# p hsh.fetch(:c)
# p hsh.fetch('c')
# p hsh.fetch(:d)

# str = 'Practice'

# arr = str.chars
# p str
# p arr
# p arr.join

# str = 'How do you get to Carnegie Hall?'
# p arr = str.split
# p arr.join(' ')

# str = 'How do you get to Carnegie Hall?'
# p arr = str.split('')
# p arr.join

# hsh = { sky: "blue", grass: "green"}
# p hsh.to_a 

# arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
# p arr.to_h

# arry1 = [[1, 2], [3, 4]]
# p arry1.to_h

str = "joe's favorite color is blue"
str[0] = 'J'
str[6] = 'F' 
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'
p str

# arr = [1, 2, 3, 4, 5]
# arr[0] += 1
# p arr

# arr[1] += 1
# arr[2] += 1
# arr[3] += 1
# arr[4] += 1

# p arr

# hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce'}
# hsh[:apple] = 'Fruit'
# p hsh

# hsh[:carrot] = 'Vegetable'
# hsh[:pear] = 'Fruit'
# hsh[:broccoli] = 'Vegetable'

# p hsh