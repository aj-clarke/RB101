=begin
Question:

Write a method that takes one argument, an array containing integers, and
returns the average of all numbers in the array. The array will never be empty
and the numbers will always be positive integers. Your result should also be an
integer.

----------------------
Problem:

Given an array of positive integers, return the average of all numbers in the
array.

Explicit Requirements:
- Method will have one parameter
- Array will never be empty
- Array will only contain positive integers
- Result should be an integer

Implicit Requirements:
- Gather the sum of all numbers, then divide by the total number of integers
  to obtain average
- There will be no negative numbers

Inputs:
Array of numbers

Outputs:
Average of numbers in array

----------------------

Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

----------------------

Data Structure:
Input: Array of Integers
Output: Integer (Average of numbers in array)

----------------------

Algorithm:

**PSEUDO - Informal**
sum then div on sum?
- Create method with one parameter for array injestion
- Create variable sum equal to the total of the integers in array
- Return sum divided by number of integers in array
- FOR ALTERNATE SOLUTION, CANNOT USE .DIV METHOD FOR DIVISION TO FLOAT

**PSEUDO - Formal**
START
DEF METHOD average(array)
  SET sum = array.sum
  SET sum.div(array.size)
END METHOD
END

----------------------

Code

=end
