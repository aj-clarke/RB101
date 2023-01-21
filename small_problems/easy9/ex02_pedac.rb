=begin
Question:
Double Doubles
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Integer
Output: Either double the integer (if the number is not a 'double number') or returning the same integer value if it is a double number
Rules:
  Explicit Requirements
  - Method returns 2 times number input
    - UNLESS the number is a double number. Return the number if it is a double number

  Implicit Requirements

-----------------------
Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

-----------------------
Data Structure:
Algorithm:
- Define the method `twice` with param of `int`
- Initialize `str` to `int` converted to a string
- If the string has an odd number of characters, return the original integer * 2
- IF not continue
- Find the mid-point of the string to split it into two strings
  - Get the lenght/size of the string and divide it by two
  - Initialize `split_length` - 1 to the result of the above
  - Initialize `str1` to a range from the beginning of the string up to `split_length`
  - Initialize `str2` to a range from `split_legth` to `split_legth` + 1
- Compare strings, if they are equal, return the original `int` as is
  - If not, return `int` * 2

-----------------------
Code:
=end
