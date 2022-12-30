=begin
Question:
ASCII String Value
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

-----------------------
Problem:
- Create method that determines then RETURNS ASCII string value of String
- ASCII str value is sum of ASCII values of each char in String
- Use String#ord to determine ASCII value of char

Input: String
Output: Return value (sum of str ASCII values)
Rules:
  Explicit Requirements
    - Return the total sum of str ASCII values
    - Method takes in one argument as param (str)
    - Calc sum of ASCII str value
    - String#ord helpful method

  Implicit Requirements
    - Retrun value is Integer
    - If no string entered, value is 0

-----------------------
Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

-----------------------
Data Structure: None

-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `ascii_value` with one parameter `str`
- Create var `sum` initialized to 0
- Each str char
    - sum += char.ord
- Implicit return of sum

-----------------------
Code:
=end