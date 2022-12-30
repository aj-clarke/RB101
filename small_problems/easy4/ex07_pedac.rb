=begin
Question:
Convert a String to a Number!
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

-----------------------
Problem:
- Write method that takes String of digits then returns appropriate number as Integer
- Cannot use String#to_i or Integer() methods
- Do not worry about leading + or - signs or invalid characters
- Assume all characters are Numeric
- Method should do this via calculating the result and analyzing chars in string

Input: String
Output: Integer representation of string
Rules:
  Explicit Requirements
     - Write method that converts string of digits to number as an Integer
     - Cannot use built-in methods to accomplish
        - Should calculate result via analyzing characters in string
     - Ignore leading + or - signs
     - Assume all input characters will be Numeric
     - Returing value (result)

  Implicit Requirements
    - Any non 'brute force' method is off the table

-----------------------
Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

-----------------------
Data Structure: Hash to convert 'digit' to digit (integer)

-----------------------
Algorithm:
**PSEUDO - Informal**
- Initialize constant `NUMBERS` with hash representing key/values (string char/integer) of 0 - 9
- Create method `string_to_integer` with one parameter `string`
- Initilaize `sum` to integer 0
- Initialize `digits` to empty Array
- Iterate over `string`
  - Each character, look-up the NUMBERS `character` key to obtain the value
  - Push that value into the `digits array`
  (now have an array of the converted digits, need to combine them (similar to a join, but join converts to a string)
- Iterate over `digits` Array
  - Each iteration should be the result of the sum * 10 + the current element of `digits`
    - If element is 0, just sum + num
- Implicit return of sum

-----------------------
Code:
=end