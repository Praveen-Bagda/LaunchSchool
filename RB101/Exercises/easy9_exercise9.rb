def get_grade(s1, s2, s3)
  # average = (s1.to_f + s2 + s3) / 3
  # case
  # when average >= 90 then "A"
  # when average >= 80 then "B"
  # when average >= 70 then "C"
  # when average >= 60 then "D"
  # else "F"
  # end

  result = (s1 + s2 + s3) / 3
  case result
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"