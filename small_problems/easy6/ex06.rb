def merge(arr1, arr2)
  merged_arr = []
  until arr1.empty? && arr2.empty?
    merged_arr << arr1.shift
    merged_arr << arr2.shift
  end
  p merged_arr.uniq.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
