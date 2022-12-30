# def halvsies(arr)
#   nested = [[], []]
#   if arr.size.even?
#     half = (arr.size / 2) - 1
#     arr.each_with_index { |int, idx| nested[0] << int if idx <= half }
#     arr.each_with_index { |int, idx| nested[1] << int if idx > half }
#   else
#     half = (arr.size / 2)
#     arr.each_with_index { |int, idx| nested[0] << int if idx <= half }
#     arr.each_with_index { |int, idx| nested[1] << int if idx > half }
#   end
#   p nested
# end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  p middle
  p first_half
  p second_half
  [first_half, second_half]
end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]
