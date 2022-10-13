=begin
Question:

Write a method that takes two arguments, a positive integer and a boolean, and
calculates the bonus for a given salary. If the boolean is true, the bonus
should be half of the salary. If the boolean is false, the bonus should be 0.

----------------------
Problem:

Given a positive integer and a boolean, create a method that calculates the
bonus for a given salary. The bonus is half the salary if the boolean is true,
and 0 if the boolean is false.

Explicit Requirements:

- Method requires two parameters
  - A positive integer representing the salary
  - Boolean to validate if bonus received or not
- Calculate bonus as half of the salary if boolean is true

Implicit Requirements:
- Return, do not print, the result of the method
- Integer will always be positive

Inputs:
Integer
Boolean

Outputs:
Integer

----------------------

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

----------------------

Data Structure: N/A
Input: Integer and Boolean
Output: Integer

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method 'calculate_bonus' with two parameters
  - One for an integer; 'salary'
  - One for a boolean; 'flag' set default to false as a safeguard to not
    accidentally send out bonus for every method call.
- Ternery operator:
  - 'salary' divided by 2
    - IF 'flag' is equal to 'true'


**PSEUDO - Formal**
START
DEF METHOD calculate_bonus(salary, flag = false)
  flag ? salary / 2 : 0
END METHOD
END

----------------------

Code

=end
