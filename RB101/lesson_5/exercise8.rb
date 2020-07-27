hsh = {first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog'] 
}

hsh.each do |_, details|
  details.each do |word|
    word.chars.each do |char|
      puts char if char =~ /[aeiou]/
    end
  end
end

