def rotate_array(arr)
  result = []

  arr.each do |num|
    result << num.dup
  end

  rotating_int = result.shift
  result << rotating_int

  # OR result << result.shift and remove the two lines above

end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
