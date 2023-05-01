def rotate_rightmost_digits(integer, rotator)
  arr = integer.digits.reverse
  rotating_arr = []
  counter = 0

  loop do
    rotating_arr << arr.pop
    counter += 1
    break if counter == rotator
  end

  rotating_arr.reverse!
  result = rotate_array(rotating_arr)
  arr << result
  arr.join.to_i
end

def rotate_array(arr)
  result = []

  arr.each do |num|
    result << num.dup
  end

  result << result.shift
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


#--------------------------------------------------------
# Nice alternate solutions without helper methods

def rotate_rightmost_digits(num, int)
  first = num.to_s.split('')
  last = first.delete_at(-int)
  (first << last).join.to_i
end

#or similarly

def rotate_rightmost_digits(num, digits)
  digit_list = num.to_s.chars
  digit_list.push(digit_list.delete_at(-digits))
  digit_list.join.to_i
end
