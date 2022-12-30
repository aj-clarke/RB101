def running_total(arr)
  total = []
    arr.map.each_with_index do |_, index|
      if index > 0
        total << arr[index] + total[index - 1]
      else
        total << arr[index]
      end
    end
  p total
  total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
