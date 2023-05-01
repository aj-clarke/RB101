=begin
Question:
Grade book
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60  'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Three separate integers
Output: String representing the letter grade based off the average of the three input integers
Rules:
  Explicit Requirements
  - Need to average the three input integers
  - Average integer result is used to determine the 'grade'
  - All values will be from 0 to 100, no need to account for anything below 0 or above 100
  - Return the letter

  Implicit Requirements

-----------------------
Examples:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

-----------------------
Data Structure: An array to work with the input integers to find the average
Algorithm:
- Define `get_grade` with params `int1`, `int2`, and `int3`
- Initialize `scores` to the three integer inputs as an array
- Initiazlie `average` to the result of summing the integers, then dividing the result by 3 to obtain the average
- Determine the string/grade score based on the average
- Implicitly return the letter (grade)


-----------------------
Code:
=end