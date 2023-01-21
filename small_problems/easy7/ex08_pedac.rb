=begin
Question:
Multiply Lists
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Method takes 2 arrays in; each contains a list of numbers
- Returns a new array with product of each pair (in same index positions) of
  numbers from input arrays.
- Assume input arrays have same number of elements
Input: Two arrays of integers
Output: Single array of product of integers (with same index) from each array
Rules:
  Explicit Requirements
  - Return new array
    - Elements in new array will be result of mutiplying elements with identical
      index positions.
  - Arrays will have the same number of elements

  Implicit Requirements

-----------------------
Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

-----------------------
Data Structure: Input arrays, Array for obtaining product, and returning that arr
Algorithm:
- Create `multiply_list` method with 2 params `arr1` and `arr2`
- Initialize `result` to empty array
- Iterate with index through `arr1`
  - Push the result of multiplying current element of `arr1` with `arr2` at
    current index position into `result`
- Implicitly return `result`

-----------------------
Code:
=end