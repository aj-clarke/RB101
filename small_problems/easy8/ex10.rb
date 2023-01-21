def average(int_arr)
  sum = 0 # Change to 0.0 if desired output is a float to account for non-whole numbers
  int_arr.each { |int| sum += int }
  sum / int_arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40