def show_multiplicative_average(arr)
  return format('%.3f', arr[0]) if arr.length.eql?(1)
  total = arr.inject(:*)
  total = total.fdiv(arr.size) # Numeric#fdiv = returns float division intead of having to call #to_f
  p format('%.3f', total.to_f)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
