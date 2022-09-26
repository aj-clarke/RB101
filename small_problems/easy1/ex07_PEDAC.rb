=begin
Question:

Write a method that takes one argument, a positive integer, and returns a string
of alternating 1s and 0s, always starting with 1. The length of the string
should match the given integer.

----------------------
Problem:

Given a positive integer, create a string that equals that integers size. The
string should contain alternating 1s and 0s. The string should always start with
1.

Explicit Requirements:
- Create string that is the length of the given integer
- The integer will always be positive
- The string will always start with 1
- Return the string

Implicit Requirements:
- Do not print the string to the screen, only return
- The provided integer will not be negative

Inputs:
Integer

Outputs:
String Return

----------------------

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(3) == '101'
puts stringy(8) == '10101010'

----------------------

Data Structure: Array
Input: String
Output: String

----------------------

Algorithm:

**PSEUDO - Informal**
- Create a method with one parameter to ingest single positive integer
- Create an empty array
- Create empty string
- Create counter for a loop
- Loop for the length of the integer to populate array with 'n' zeros 
- Iterate through array
  - Modify all even indexes to equal 1
  - Push each into final string


**PSEUDO - Formal**
START

DEF METHOD stringy(int)
  SET array = []
  SET string = ''
  SET counter = int
  LOOP
    SET array << 0
    SET counter -= 1
    BREAK IF counter.eql?(0)
  END LOOP
  EACH array ELEMENT/INDEX
    SET element = 1 IF index.even? == true
    SET string to element at current index
  END EACH
  array
END METHOD

END

----------------------

Code

=end
