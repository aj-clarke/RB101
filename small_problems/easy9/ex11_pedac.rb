=begin
Question:
Odd Lists
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array (can be empty)
Output: Array consisting of even indexed from original array
Rules:
  Explicit Requirements
  - New array must contain only even indexed elements from original input array
  - 

  Implicit Requirements

-----------------------
Modeling:
([2, 3, 4, 5, 6]) == [2, 4, 6]
 [2,    4,    6]

-----------------------
Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

-----------------------
Scratch Pad:
each_with_index
  - if index is even
select
-----------------------
Data Structure: Array input
                New array of even index posisitions
Algorithm:
- Define `oddities` with param `int_arr`
- Initialize `new_arr` to []
- Iterate through input array and push current element to `new_arr` if index is even
  - Iterate with each_with_index
    - if index is even, push current element into `new_arr`
    

-----------------------
Code:
=end

