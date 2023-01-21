def multiply_all_pairs(arr1, arr2)
  arr1_sub_idx = 0
  arr2_sub_idx = 0
  combined = []
  combined << arr1
  combined << arr2
#  combined.sort_by(&:size)
  result = []
  loop do
    break if arr1_sub_idx.eql?(arr1.size)

    loop do
      break if arr2_sub_idx.eql?(arr2.size)

      result << combined[0][arr1_sub_idx] * combined[1][arr2_sub_idx]
      arr2_sub_idx += 1
    end
    arr2_sub_idx = 0
    arr1_sub_idx += 1
  end
  result.sort
end

# LS Solution
# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([4, 3, 1, 2], [2, 4]) #== [2, 4, 4, 6, 8, 8, 12, 16]
