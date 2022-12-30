def find_fibonacci_index_by_length(length)
  fib_arr = [1, 1]
  counter = 1
  fib_number = 0

  while fib_number.to_s.length < length
    fib_number = (fib_arr[counter]) + (fib_arr[counter - 1])
    fib_arr << fib_number
    counter += 1
  end

  counter + 1
end

# p find_fibonacci_index_by_length(2) #== 7       # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) #== 12      # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
# p find_fibonacci_index_by_length(1000) #== 4782
# p find_fibonacci_index_by_length(10000) #== 47847
