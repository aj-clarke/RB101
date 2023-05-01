def buy_fruit(arr)
  result = []
  arr.each do |sub_arr|
    sub_arr[1].times { |_| result << sub_arr[0] }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]