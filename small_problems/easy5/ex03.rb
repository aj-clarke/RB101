MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time)
  time = time_to_int_arr(time)
  time[0] *= MINUTES_PER_HOUR
  return time.sum unless time.sum.eql?(MINUTES_PER_DAY)
  0 if time.sum.eql?(MINUTES_PER_DAY)
end

def before_midnight(time)
  result = MINUTES_PER_DAY - after_midnight(time)
  return 0 if result.eql?(1440)
  result
end

def time_to_int_arr(time)
  time.split(":").map!(&:to_i)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p before_midnight('00:01') == 1439
p before_midnight('01:01') == 1379
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
