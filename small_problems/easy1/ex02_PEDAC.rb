=begin

Write a method that takes one integer argument, which may be positive, negative
or zero. This method returns `true` if the number's absolute value is odd. You
may assume that the argument is a valid integer value.

----------------------
Problem:

Given a valid integer (positve, negative, or zero), return `true` if the
absolute value is odd.
  - Integer will be a valid number
  - Numbers can be positive, negative, or zero
  - Return true for odd integer
    - Also return false for even integer

Inputs:
  Single integer

Outputs:
  None, only return value

----------------------

Examples:

is_odd?(-5)   => true
is_odd?(6)    => false
is_odd?(13)   => true

----------------------

Data Structure: None

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method that ingests 1 integer
- Use modulo method 
  - Create new variable
  - Variable = result of integer % 2
- Does integer % 2 equal 0?
  - If yes, then it is an even number, RETURN false
  - If no, then it is an odd number, RETURN true

**PSEUDO - Formal**
START
DEF METHOD is_odd?(int)
  SET result = int % 2

  IF result.eql?(0)
    RETURN false
  ELSE
    RETURN true
  END IF
END METHOD
END

----------------------

Code

=end
