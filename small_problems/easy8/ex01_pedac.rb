=begin
Question:
Sum of Sums
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

-----------------------
Questions:
- Does it matter if I start with (3) or can I start with (3 + 5 + 2)?

Problem (Rewrite if needed else skip):

Input: Array of Integers
Output: Sum of the sums of each leadning sequence in the array
Rules:
  Explicit Requirements
  - Return the sum of sums of each leading sequence in the array
  - Array will contain at least one number
  - Example is [1, 2] => (1) + (1 + 2) -> 4

  Implicit Requirements
  - Array with single element returns that elements value

-----------------------
Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

-----------------------
Data Structure: Input Array, Array for placeholder of each sum, Integer output
  containing total of all sums
Algorithm:
- Define method `sum_of_sums` with param `arr`
- Initialize `idx_counter` to 0 (will reset this counter each "iteration")
- Initialize `arr_max_size` to the size of `arr`
- Initialize `break_counter` to 0
- Initialize `sum_arr` to []
- Initialize `tmp_arr` to []
- Until `break_counter` is equal to `arr_max_size`
  - Push the first `arr` element into `sum_arr` as an array object if
    `break_counter` is 0
  - Create inner loop to add additional integer elements
    - Create break condition based on `idx_counter` being equal to `break_counter`
    - Push elements into `tmp_arr` from index 0 to `break_counter` as an array object
    - Increment `idx_counter` by 1
  - Push `tmp_arr` into `sum_arr`
  - Reassign `tmp_arr` to []
  - Reassign `idx_counter` to 0
  - Increment `break_counter`
  - Add each sub_arrays elements in `sum_arr`, then add each result for total


-----------------------
Code:
=end