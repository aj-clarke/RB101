=begin
Question:
Multiples of 3 and 5
Write a method that searches for all multiples of 3 or 5 that lie between 1 and
some other number, and then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be 98
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

-----------------------
Problem:
- Create method with one parameter (an integer)
- Then search for all multiples of 3 or 5 that lie between 1 and the provided
  Integer
- Then compute the sum of those multiples captured:
  - Example: Input 20, result should be 98
    3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20
- Can assume the number passed in is an integer greater than 1

Input: Integer
Output: Integer
Rules:
  Explicit Requirements
    - Create method to ingest one integer as input
    - Search for all multiples of 3 and 5 between integer 1 and the input
      Integer
    - Calculate/compute the sum of all captured multiples
    - Input integer assumed to be greater than 1 (no validation)

  Implicit Requirements
    - Assume returning the calculated sum/result

-----------------------
Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

-----------------------
Data Structure: Array to capture multiples to then calculate

-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `multisum`(int)
- Initialize mult_arr to empty array
- Use for loop to iterate from 1 to input Integer
- Modulo 3 or 5 = 0, if so, add to Array
- Calculate total sum of array (use inject method)
-----------------------
Code:
=end
