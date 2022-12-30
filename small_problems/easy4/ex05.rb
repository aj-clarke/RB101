def multisum(int)
  mult_arr = []
  for i in (1..int) # Could have used `upto` method instead
    mult_arr << i if (i % 3 == 0) || (i % 5 == 0)
  end
  mult_arr.inject(:+)   # => Or `sum` method
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
