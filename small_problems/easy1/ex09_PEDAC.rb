=begin
Question:

Write a method that takes one argument, a positive integer, and returns the
sum of its digits.

----------------------
Problem:

Given a positive integer, return the sum of all individual digits.

Explicit Requirements:
- Method requires one parameter for an integer
- Digits of the integer must be added together for a total sum
- Return the sum

Implicit Requirements:
- Integer will always be positive

Inputs:
Integer

Outputs:
Sum of integers digits

----------------------

Examples:

puts sum_of_digits(23) == 5
puts sum_of_digits(496) == 19
puts sum_of_digits(123_456_789) == 45

----------------------

Data Structure: Array
Input: Integer
Output: Integer

----------------------

Algorithm:

**PSEUDO - Informal**
- Create a method 'sum_of_digits' with one parameter 'int' to ingest integer
- Convert integer to array via 'digits' method, chain on the 'sum' method, and
  return the value

**PSEUDO - Formal**
START
DEF METHOD sum_of_digits(int)
  int.digits.sum
END METHOD
END

ALTERNATE METHOD?
**PSEUDO - Informal**
- Create a method 'sum_of_digits' with one parameter 'int' to ingest integer
- Set int_str_arr to integer converted to string, with split('') chained
- MAP result of int_str_arr elements converted to integer to int_arr
- Return sum of int_arr



**PSEUDO - Formal**
START
DEF METHOD
  SET int_arr = int.to_s.split('')

  IF int_arr.include?('_') or int_arr.include?(',')
    GSUB! it out
  END IF

  MAP int_arr to int_str_arr converted to integer
  SET/RETURN int_arr.split.sum
END METHOD
END
----------------------

Code

=end
