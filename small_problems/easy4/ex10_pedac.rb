=begin
Question:
Convert a Signed Number to a String!
In the previous exercise, you developed a method that converts non-negative
numbers to strings. In this exercise, you're going to extend that method by
adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string
representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. You may, however, use
integer_to_string from the previous exercise.

-----------------------
Problem:
- Add the ability to represent a negative number to the previous method
- Create method that takes integer, and converts to string representation
- Cannot use standard conversion options, but can use previous method

Input: Integer
Output: String with leading '+' or '-' as required
Rules:
  Explicit Requirements
    - Create method that converts integer to string
    - Add ability to represent negative number
    - Cannot use standard conversion options, but can use prev method

  Implicit Requirements
    - If integer is positive, add leading '+' character to string
    - If integer is negative, add leading '-' character to string
    - If integer is 0 do not add leading character

-----------------------
Examples:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

-----------------------
Data Structure:

-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `signed_integer_to_string` with on param `int`
- If `int` equals 0, then return '0'
- If `int` is greater than 0
  - Set `lead` equal to '+'
- Else
  - Set `int` equal to `int` * -1 to remove negative symbol, and set `lead` to
    '-'
- Initialize `result` to evaluation of calling helper method
  `integer_to_string` with `int` as argument
- (ternary op) If `negative` is equal to false, return `result` with '+'
  inserted at index 0, else return `result` with '-' at index position 0

-----------------------
Code:
=end