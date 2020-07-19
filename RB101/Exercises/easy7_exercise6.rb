def staggered_case(input_string)
  result_string = ''
  counter = 0

  input_string.chars.each do |char|
    if char =~ /[a-z]/i
      result_string += char.upcase if counter.even?
      result_string += char.downcase if counter.odd?
      counter += 1
    else
      result_string += char
    end
  end

  result_string
end

p staggered_case('I Love Launch School!') == "I lOvE lAuNcH sChOoL!"
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'