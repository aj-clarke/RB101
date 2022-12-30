=begin
Question:
Halvsies
Write a method that takes an Array as an argument, and returns two Arrays (as a
pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array of integers
Output: Array of two nested arrays with integers split in half (odd will have
        one extra in the first array)
Rules:
  Explicit Requirements
    - Method returns two nested arrays
      - Nested arrays are split evenly unless there is an odd number of integers
        - First nested array has the middle index if there is an odd number

  Implicit Requirements
    - Empty array returns two empty nested arrays
    - Array with one element returns nested array with first array containing
      integer, and second array empty
-----------------------
Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

-----------------------
Data Structure:
Algorithm:
- Create `halvsies` method with param `arr`
- Initialize `nested` with two empty arrays
- If `arr` is even, get size and subtract by one to get indexes
  - Iterate through (with index) and add to first nested array if the index is
    less than or equal to `half`

-----------------------
Code:
=end