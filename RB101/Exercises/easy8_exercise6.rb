def fizzbuzz(starting_number, ending_number)
  result = (starting_number..ending_number).to_a.map do |number|
    if number % 3 == 0 && number % 5 == 0
      "FizzBuzz"
    elsif number % 3 == 0
      "Fizz"
    elsif number % 5 == 0 
      "Buzz"
    else
      number
    end
  end

  puts result.join(", ")
end

fizzbuzz(1, 15)