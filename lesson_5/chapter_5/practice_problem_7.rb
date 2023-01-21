# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] += 2 # Begins as integer 2, modified to 4 (does not modify variable `a`)
arr[1][0] -= a # Begins as integer 5, subtract 2 from it modifies to integer 3

# a = 2
# b = [3, 8]