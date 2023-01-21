=begin
Given the following data structure and without modifying the original array,
use the map method to return a new array identical in structure to the original
but where the value of each integer is incremented by 1.
=end

arr = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]

arr.map do |hash|
  modified_arr = {}
  hash.each do |key, value|
    modified_arr[key] = value + 1
  end
  p modified_arr
end

p arr
