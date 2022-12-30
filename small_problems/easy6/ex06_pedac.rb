=begin
Question:
Combining Arrays
Write a method that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates in the
original Arrays.

-----------------------
Questions:
- Will arrays be of equal size
Problem (Rewrite if needed else skip):

Input: Two arrays
Output: Single merged array with no duplicate elements
Rules:
  Explicit Requirements
    - Create method that takes two arrays as arguments
    - Method returns single merged array containing all unique values/elements
      - Remove duplicates after merging

  Implicit Requirements
    - Assume arrays will be of equal size?
    - Sort array when complted
-----------------------
Examples:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

-----------------------
Data Structure: Array
Algorithm:
- Create method `merge` with two params `arr1` and `arr2`
- Initialize `merged_arr` to empty array
- Alternate adding elements from `arr1` and `arr2` into `merged_arr` until
  they are empty
- Return `merged_arr` with sorted unique values only

-----------------------
Code:
=end