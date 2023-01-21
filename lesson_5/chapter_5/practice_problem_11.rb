=begin
Given the following data structure use a combination of methods, including
either the select or reject method, to return a new array identical in structure
to the original but containing only the integers that are multiples of 3.
=end

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.each_with_object([]) do |sub_arr, new_arr|
  new_arr << sub_arr.select do |int|
    int % 3 == 0
  end
  p new_arr
end

arr2 = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr2.each_with_object([]) do |sub_arr, new_arr2|
  new_arr2 << sub_arr.reject do |int|
    int % 3 != 0
  end
  p new_arr2
end

arr3 = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_arr3 = arr3.map do |sub_arr|
  sub_arr.select do |ele|
    ele % 3 == 0
  end
end

p new_arr3