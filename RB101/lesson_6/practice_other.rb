

def joinor(array, delimiter = ',', last_delimiter = 'or')
  string = ''
  counter = 0
  loop do
    break if counter >= array.size - 1
    string << array[counter].to_s
    counter += 1
    string << delimiter + ' ' unless counter >= array.size - 1
  end

    string << ' ' + last_delimiter + ' ' if array.size > 1
    string << array.last.to_s if array.size > 0
    string
end

p joinor([1, 2])