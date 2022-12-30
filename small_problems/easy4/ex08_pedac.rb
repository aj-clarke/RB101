=begin
Question:
Convert a String to a Signed Number!
In the previous exercise, you developed a method that converts simple numeric
strings to Integers. In this exercise, you're going to extend that method to
work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. The String may have a leading + or - sign; if the first
character is a +, your method should return a positive number; if it is a -,
your method should return a negative number. If no sign is given, you should
return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby,
such as String#to_i, Integer(), etc. You may, however, use the string_to_integer
method from the previous lesson.

-----------------------
Problem:
- Using the string_to_integer method possibly as helper
- Write method that takes string of digits
- Return approprate integer based on (possible) leading + or -
- If +, or no leading sign, the number should be positive
- If - leading sign, number should be negative
- String will always contain a valid number

Input: String
Output: Positive or Negative Integer
Rules:
  Explicit Requirements
    - Create method to convert string to postive or negative Integer
    - Return integer, do not display
    - If no leading sign, or + leading sign, return positive integer
      - Otherwise (- sign) return negative integer
      
  Implicit Requirements

-----------------------
Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

-----------------------
Data Structure: Hash for conversion chart and Array for individual string/digit
conversion values

-----------------------
Algorithm:
**PSEUDO - Informal**
- Initialize NUMBERS constant with string/integer (key/value pairs)
- Create method `string_to_signed_integer` with one param of (string)
- If the first element of `string` is a '-', initialize variable `negative` to
  true
- Delete + or - from `string` if exists
- Call `string_to_integer` helper method to return new result
- If `positive` not equal to true, then sum = sum * -1
- Return sum

-----------------------
Code:
=end