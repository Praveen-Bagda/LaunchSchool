# def time_of_day(number)
#   if number < 0
#     h1, m1 = number.divmod(-60)
#     minute = 60 + m1
#     hour = 24 - (h1+1)
#     if hour < 0
#       hour = - hour
#       loop do
#         break if hour < 24
#         hour %=  24
#       end
#       hour = 24 - hour if number < 0
#     end
#   else
#   hour, minute = number.divmod(60)
#   loop do
#     break if hour < 24
#     hour %=  24
#     end
#   end

#   hour.to_s.rjust(2, '0') + ":" + minute.to_s.rjust(2, '0')
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  p delta_minutes
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  p hours
  format('%02d:%02d', hours, minutes)
end

p time_of_day(-1560)
p -1560 % 1440