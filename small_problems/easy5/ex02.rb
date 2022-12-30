def time_of_day(int)
  time_hash = { hours: 0, minutes: 0 }
  time_arr = []
  return "00:00" if int.eql?(0)

  int > 0 ? calc_pos_time(int, time_hash) : calc_neg_time(int, time_hash)

  time_arr << time_hash[:hours].to_s
  time_arr << time_hash[:minutes].to_s
  time_arr[0].prepend("0") if time_hash[:hours] < 10
  time_arr[1].prepend("0") if time_hash[:minutes] < 10
  time_arr.join(":")
end

def calc_pos_time(int, time_hash)
  loop do
    if int >= 60
      time_hash[:hours] += 1
      int -= 60
      time_hash[:hours] = 0 if time_hash[:hours].eql?(24)
    else
      time_hash[:minutes] += int
      int -= int
    end

    break if int.eql?(0)
  end
  time_hash
end

def calc_neg_time(int, time_hash)
  time_hash[:hours] = 23
  loop do
    if int >= -60
      time_hash[:minutes] = 60 - int.abs
      int += int.abs
    else
      time_hash[:hours] -= 1
      time_hash[:hours] = 23 if time_hash[:hours].eql?(-1)
      int += 60
    end

    break if int.eql?(0)
  end
  time_hash
end

p time_of_day(0) == "00:00"
p time_of_day(35) == "00:35"
p time_of_day(800) == "13:20"
p time_of_day(3000) == "02:00 "
p time_of_day(-3) == "23:57"
p time_of_day(-61) == "22:59"
p time_of_day(-1437) == "00:03"
p time_of_day(35) == "00:35"
p time_of_day(-4231) == "01:29"
