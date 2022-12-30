# def reverse(arr)
#   reversed_arr = []
#   return reversed_arr if arr.size.eql?(0)
#   counter = -1
#   total_elements = arr.size
#   until total_elements.eql?(0)
#     reversed_arr << arr[counter]
#     counter -= 1
#     total_elements -= 1
#   end
#   p reversed_arr
# end

def reverse(arr)
  arr.each_with_object([]) { |ele, rev_arr| rev_arr.prepend(ele) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
