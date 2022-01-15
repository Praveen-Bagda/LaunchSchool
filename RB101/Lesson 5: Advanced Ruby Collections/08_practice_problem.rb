hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels= %w(a e i o u)

hsh.each_value do |sub_array|
  sub_array.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

