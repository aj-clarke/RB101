def sum_of_sums(arr)
  return arr[0] if arr.size.eql?(1)
  idx_counter = 0
  break_counter = 0
  sum_arr = []
  tmp_arr = []
  until break_counter.eql?(arr.size)
    loop do
      tmp_arr << arr[idx_counter]
      break if idx_counter.eql?(break_counter)
      idx_counter += 1
    end
    break_counter += 1
    sum_arr << tmp_arr
    tmp_arr = []
    idx_counter = 0
  end
  total = sum_arr.map do |sub_arr|
    if sub_arr.size.eql?(1)
      sub_arr[0]
    else
      sub_arr.inject(:+)
    end
  end
  total.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
