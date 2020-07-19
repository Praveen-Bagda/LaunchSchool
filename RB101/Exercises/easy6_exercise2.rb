def remove_vowels(input_array)
  input_array.map do |word|
    word.gsub(/[aeiou]/i, '')
    # word.delete("aeiouAEIOU")
  end
end

array1 = %w(abcdefghijklmnopqrstuvwxyz)
array2 = %w(green YELLOW black white)
array3 = %w(ABC AEIOU XYZ)

p remove_vowels(array1) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(array2) == %w(grn YLLW blck wht)
p remove_vowels(array3) == ['BC', '', 'XYZ']