=begin
Question:
Combine Two Lists
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Create an method that takes in two arrays as arguments
- Return value should be one single array with elements interweaved together
- Assume arrays will not be empty and will same number of elements

Input: Two arrays
Output: Single NEW array
Rules:
  Explicit Requirements
  - Method returns a new Array
  - Arrays passed in will be combined (alternating arr1[0], arr2[0], arr1[1], arr2[1], etc)
  - Input arrays will not be empty, and will always be the same size

  Implicit Requirements

-----------------------
Examples:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

-----------------------
Data Structure: Array
Algorithm:
- Create method `interleave` with two parameters `arr1` `arr2`
- Create a counter for index positions during iteration
- Initialize `combined_arr` to empty array
- Iterate through both arrays via a loop to push each index into a new array
  - Create break condition based off of either array size

-----------------------
Code:
=end
