# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |ele, idx|
#     result << ele * arr2[idx]
#   end
#   result
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
