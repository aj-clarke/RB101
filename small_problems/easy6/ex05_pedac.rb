=begin
Question:
Write a method that takes an Array, and returns a new Array with the elements of
the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you
wrote in the previous exercise.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array
Output: Array reversed
Rules:
  Explicit Requirements
    - Method takes array and returns NEW array
      - Elements are in reverse order compared to the original array
    - DO NOT MUTATE ORIGINAL ARRAY OR ITS ELEMENTS

  Implicit Requirements
    - If array is empty, return empty array
-----------------------
Examples:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

-----------------------
Data Structure: Array
Algorithm:
(Try using each with object?)
- Create method `reverse` with param `arr`
- Initialize `reversed_arr` to empty array object
- Explicitly return `reversed_arr` if `arr` size is 0
- Initialize `counter` to -1 (to start with last element)
- Initialize `total_elements` to `arr` size
- Iterate through using a basic looping mech to count from the last element to
  the first, adding each element to the `reversed_arr` array
  - Until the `total_elements` counter is equal to 0
    - Push element at `counter` position into `reversed_arr`
    - Subtract 1 from `counter` and `total_elements`
- Implicitly return `reversed_arr`
-----------------------
Code:
=end