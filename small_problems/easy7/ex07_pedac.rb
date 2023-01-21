=begin
Question:

Multiplicative Average
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array, and
then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Method takes in array of integers
- Integers are all multiplied together
  - Result is divided by number of elements in array (integers)
    - Result is rounded to 3 decimal places
- Assume array is not empty

Input: Array of integer(s)
Output: Integer result rounded to 3 decimal places
Rules:
  Explicit Requirements
  - Array of integers will be multiplied together
    - Result of above will be divided by the number of elements in input array
      - Result of above will be rounded to 3 decimal places
  - Assume array will not be empty

  Implicit Requirements
  - Single element will return integer rounded to 3 decimal places
-----------------------
Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

-----------------------
Data Structure: Working with input array
Algorithm:
- Create method `show_multiplicative_average` with param `arr`
- If `arr` is a single integer, return it rounded to 3 decimal places
- Initialize variable `total` to the product of arrays in integer.
- Reassign `total` to the result of dividing `total` converted to a float by
  lenght of `arr`
- Format total to round to 3 decimal places
-----------------------
Code:
=end