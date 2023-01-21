def interleave(arr1, arr2)
  idx_counter = 0
  combined_arr = []
  loop do
    break if arr1.size.eql?(idx_counter)

    combined_arr << arr1[idx_counter]
    combined_arr << arr2[idx_counter]
    idx_counter += 1
  end
  combined_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
