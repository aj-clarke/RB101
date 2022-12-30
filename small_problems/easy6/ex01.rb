DEGREE = "\xC2\xB0"

def dms(float)
  conversion = { degrees: 0, minutes: 0, seconds: 0 }
  conversion[:degrees] = float.to_i
  temp_minutes = float - conversion[:degrees]
  conversion[:minutes] = (temp_minutes * 60).to_i
  temp_seconds = (temp_minutes * 60) - conversion[:minutes]
  conversion[:seconds] = (temp_seconds * 60).to_i
  degrees = conversion[:degrees] # Used to make formatting line shorter
  minutes = format("%02d", conversion[:minutes]) # Used to make formatting line shorter
  seconds = format("%02d", conversion[:seconds]) # Used to make formatting line shorter
  format(%(#{degrees}#{DEGREE}#{minutes}'#{seconds}"), conversion[:minutes],
         conversion[:seconds])
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00") # off by 1 second : %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
