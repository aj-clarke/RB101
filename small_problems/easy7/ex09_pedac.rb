=begin
Question:
Multiply All Pairs
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of every pair
of numbers that can be formed between the elements of the two Arrays. The
results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Write method taking in 2 Array arguments
- Each array contains collection of integers
- Method returns a NEW array
  - Array contains the product of every possible number pair between the two
    arrays
- Returned array should be sorted by smallest to largest integer
- Neither argument is an empty array
Input: 2 arrays
Output: Single array as shown in example above
Rules:
  Explicit Requirements
  - Method will return a NEW ARRAY
  - Array contains the product of every possible number pair between the two
    arrays ([2], [1, 2] => 2 * 1 and 2 * 2 => [2, 4])
  - Sort the return array smallest to largest integer
  - Input arrays will not be empty

  Implicit Requirements
  - N/A
-----------------------
Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

-----------------------
Data Structure: 2 input arrays, one combined (per requirements) output array
Algorithm:
- Define method `multiply_all_pairs` with 2 params of `arr1` and `arr2`
- Initialize `arr1_idx` to 0
- Initialize `arr2_idx` to 0
- Initialize `combined` to empty array
- Push in `arr1` and `arr2`
- Sort them by size (smallest array first)
- Initialize `result` to empty array
- Iterate through `combined` array via outer loop
  - Create break condition to trigger when `arr1_idx` is equal to the size
    of `arr1`
    - Iterate through combined array via inner loop
      - Create break condition to trigger when `arr2_idx` is equal to the size
        of `arr2`
      - Push into the `result` array the return value of `combined[arr1_idx]`
        multiplied by `combined[arr2_idx]`
      - Add 1 to `arr2_idx`
  - Reassign `arr2_idx` to 0
  - Add 1 to `arr1_idx`
- Implicitly return `result`


Brain dump notes: array 1 map then create inner loop breaking on size of second
  array, then push result of each multiplication of first element in array 1
  times each element in array 2 (based on counter) into a new array.
  The second iteration would be multiplying the second element in array 1 times
  each element in array 2; pushing results into the `new array`

-----------------------
Code:
=end