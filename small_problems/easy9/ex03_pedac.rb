=begin
Question:
Counting Up
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Integer
Output: An array of incrementing elements from 1 up to the input integer
Rules:
  Explicit Requirements
  - Method returns an array of integers
    - Integers in array increment by 1 for each successive element
    - Element integers always start at integer 1
  - Input integer will always be valid, and greater than 0 

  Implicit Requirements
  
-----------------------
Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

-----------------------
Data Structure: Array to input each integer up to the input integer
Algorithm:
- Define `sequence` with param `int`
- Initialze `result` to empty array
- Create a range or counter to capture each integer up to the input integer
- Push each integer into `result` array
- Return the array

-----------------------
Code:
=end
