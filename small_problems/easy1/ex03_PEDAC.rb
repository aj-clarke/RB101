=begin
Question:
Write a method that takes one argument, a positive integer, and returns a list
of the digits in the number.

----------------------
Problem (re-write):
Create a method that when given a positive number outputs a list of each digit
in that number

Explicit Requirements:
- Method requires one parameter for a positive integer
- Split up the integer to list each numeric character individually
- Return the list of individual characters (integers)

Implicit Requirements:
- Will not need to account for negative numbers

Inputs:
- Positive integer

Outputs:
- Array of integers formed from breaking up the provided positive integer

----------------------

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5])      # => true
puts digit_list(7) == [7]                       # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]   # => true
puts digit_list(444) == [4, 4, 4]               # => true

----------------------

Data Structure:
Input: Single Positive Integer
Output: Array of integers

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method digit_list with one parameter that ingests an integer
- Create array variable and set it equal to:
  - Convert integer to a string and split (one line)
- "Map" 'array' to iterate through array and convert each element back to an
  integer.
- Implicit Return of new array

**PSEUDO - Formal**
START
DEF METHOD digit_list(int)
  SET array = int.to_s
  SET MAP array |element| element.to_i
END METHOD
END

----------------------

Code

=end
