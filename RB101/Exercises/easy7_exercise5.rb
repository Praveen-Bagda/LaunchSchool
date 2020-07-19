def staggered_case(input_string)
  result_string = ''
  counter = 0
  loop do
    break if counter == input_string.size
    if input_string[counter] =~ /[a-zA-Z]/
      result_string << input_string[counter].upcase if counter.even?
      result_string << input_string[counter].downcase if counter.odd?
    else
      result_string << input_string[counter]
    end
    counter += 1
  end

  result_string
end

p staggered_case('I Love Launch School!') == "I LoVe lAuNcH ScHoOl!"
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'