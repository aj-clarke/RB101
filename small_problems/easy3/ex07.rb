# Original Solution
def oddities(arr)
  return_arr = []
  arr.each_with_index { |v, i| return_arr << v if i.even? }
  return_arr
end

# Alternate Solutions

# def oddities(arr)
#   return_arr = []
#   index = 0
#   arr.each do |e|
#     return_arr << e if index.even?
#     index += 1
#   end
#   return_arr
# end

# def oddities(arr)
#   return_arr = []
#   index = 0
#   loop do
#     break if index.eql?(arr.size)
#     return_arr << arr[index] if index.even?
#     index += 1
#   end
#   p return_arr
#   return_arr
# end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
