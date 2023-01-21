=begin
Question:
Array Average
Write a method that takes one argument, an array containing integers, and
returns the average of all numbers in the array. The array will never be empty
and the numbers will always be positive integers. Your result should also be an
integer.

Don't use the Array#sum method for your solution - see if you can solve this
problem using iteration more directly.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array of integers
Output: Integer result (average of all array integers)
Rules:
  Explicit Requirements
  - Method returns average of all numbers in array
  - Array will never be empty
  - Numbers will always be positive integers
  - Return value should be an integer
  - Do not use `Array#sum`

  Implicit Requirements
  - Not worried about decimal values; ie: 7/2 = 3.5, but with integer division
    7/2 should equal 3

-----------------------
Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

-----------------------
Data Structure: Array input, performing calulation of elements within the array
                to obtain a single integer result/return value
Algorithm:
- Define `average` with pram `int_arr`
- Initialize `sum` 0
- Iterate through `int_arr`, add each elements value incrementally to `sum`
- Implicitly return `sum` divided by `int_arr` size

-----------------------
Code:
=end