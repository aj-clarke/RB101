=begin
Question:
Convert a Number to a String!
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

-----------------------
Problem:
- Write method that converts positive integer or zero to string representation
- Cannot use standard conversion methods

Input: Integer
Output: String representation of input integer
Rules:
  Explicit Requirements
    - Create method that takes integer as input
    - Method converts positive integer, or zero, to string representation
    - Cannot use standard conversion methods
    - Construct string by analyzing and manipulating the number

  Implicit Requirements

-----------------------
Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

-----------------------
Data Structure: Array for conversion

-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `integer_to_string` with single param of `int`
- Initialize `digits` variable to an empty array

- Start a loop to mathamatically work through conversion
  - If `int` is equal to 0, then return "0"
  - Else
      - Until `int` is equal to integer 0
        - Push result of `int` modulo 10 into `digits` Array
        - Divide `int` by 10
  - Break out of loop when `int` is equal to integer 0
- Reverse the Array then join array

-----------------------
Code:
=end