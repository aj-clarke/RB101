=begin
Question:

Odd Lists

Write a method that returns an Array that contains every other element of an
Array that is passed in as an argument. The values in the returned list should
be those values that are in the 1st, 3rd, 5th, and so on elements of the
argument Array.

----------------------
Problem:
Create a method that returns an Array consisting of only the odd elements in the
original array.

Explicit Requirements:
- Create method that ingests an array and returns a new array
  - The new array will contain only elements in the odd indexes of the original
    array

Implicit Requirements:
- Return the array, do not display it

----------------------

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

----------------------

Data Structure: Array
Input: Array
Output: New array

----------------------

Algorithm:

**PSEUDO - Informal**
- Create a method `oddities` with one parameter `arr`
  - Create empty array `return_arr`
  - Use each with index
    - Push value into `return_arr` if index is even (index count starts at 1
      not 0 when using each_with_index)
  - Explicit return

**PSEUDO - Formal**
START
DEF METHOD oddities(arr)
  SET return_arr = []
  EACH_WITH_INDEX on arr { |v, i| return_arr << IF index is even }
  EXPLICIT RETURN return_arr
END

----------------------

Code

=end
