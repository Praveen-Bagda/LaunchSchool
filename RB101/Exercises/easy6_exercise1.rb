DEGREE = "\xC2\xB0"

def dms(float)
  degree = float.to_i
  minutes = ((float-degree) * 60).to_i
  seconds = (float - degree - (minutes.to_f/60)) * 3600

  degree.to_s + DEGREE + format("%.2d", minutes) + "'" + format("%.2d", seconds) + "\""
end

p dms(30) == %(30#{DEGREE}00'00")
p dms(76.73) == %(76#{DEGREE}43'48")
puts dms(254.6) #== %(254#{DEGREE}36'00")
puts dms(93.034773) == %(93#{DEGREE}02'05")
puts dms(0) == %(0#{DEGREE}00'00")
puts dms(360) == %(360#{DEGREE}00'00")