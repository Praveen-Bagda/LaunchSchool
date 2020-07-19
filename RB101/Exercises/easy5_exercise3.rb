def after_midnight(string)
  if string[0, 2].to_i < 24
    sum = (string[0,2].to_i * 60) + string[-2, 2].to_i
  else
    sum = 0
  end

  sum
end

def before_midnight(string)
  if string[0, 2].to_i < 24 && string[0, 2].to_i > 0
    sum = 1440 - ((string[0,2].to_i * 60) + string[-2, 2].to_i)
  else
    sum = 0
  end

  sum
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')