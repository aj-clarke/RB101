=begin
Question:
Does My List Include This?
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array and search value
Output: Boolean true or false
Rules:
  Explicit Requirements
  - Method returns TRUE if search value is in the array, false if not
  - Cannot use Array#inclued? method

  Implicit Requirements

-----------------------
Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

-----------------------
Data Structure: Working with input array
Algorithm:
- Create method `include?` with params `arr` and `search_val`
- Iterate through array, and return true if current element equals `search_val`
- Implicitly return false if not


-----------------------
Code:
=end
