=begin
Question:
Searching 101

Write a program that solicits 6 numbers from the user, then prints a message
that describes whether or not the 6th number appears amongst the first 5
numbers.

----------------------
Problem:

Create a program that asks for 6 numbers from a user. The program will then
output a message that informs the user whether the 6th number entered is a
repeat of the first 5 entered.

Explicit Requirements:
- Ask the user to enter 6 integers
- Display whether or not the 6th number is a duplicate of the previous 5

Implicit Requirements:
- Each integer will be requested separately
  - The user will not enter them all at once with spaces, or separated by commas
- No validation of input required or asked for; skipping validation

----------------------

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

----------------------

Data Structure: Array
Input: Individual integers
Output: String with Integer and Array via interpolation

----------------------

Algorithm:

**PSEUDO - Informal**
- Create a variable `comparison_array` set to an empty array
- Get input for each of the first 5 numbers (convert to integer)
  - Set the variable `number` as the input number then add it to the empty array
  - Repeat
- Get input for the last number
  - Set a variable `comparison_integer` equal to the number (convert to integer)
- Create empty variable `contains_number`
  - Use EACH against array
  - If the `comparison_integer` matches one of the iterations integers
    - Set `contains_number` to true
  - If the `comparison_integer` does not match one of the iterations integers
  - Set `contains_number` to true
- Display - The `comparison_integer` appears in the array
- Display - The `comparison_integer` does not appear in the array

**PSEUDO - Formal**
START
SET comparison_array = []

DISPLAY '==> Enter the 1st number:'
SET number = gets.chomp.to_i
SET comparison_array << number

DISPLAY '==> Enter the 2nd number:'
SET number = gets.chomp.to_i
SET comparison_array << number

DISPLAY '==> Enter the 3rd number:'
SET number = gets.chomp.to_i
SET comparison_array << number

DISPLAY '==> Enter the 4th number:'
SET number = gets.chomp.to_i
SET comparison_array << number

DISPLAY '==> Enter the 5th number:'
SET number = gets.chomp.to_i
SET comparison_array << number

DISPLAY '==> Enter the final number:'
SET comparison_integer = gets.chomp.to_i

SET contains_number = ''
EACH integer in comparison_array
  IF integer.eql?(comparison_integer)
    SET (contains_number = true)
    BREAK
  ELSE
    SET (contains_number = false)
  END IF
END
DISPLAY "The integer `comparison_integer` appears in `comparison_array`"
  IF contains_number == true
DISPLAY "The integer `comparison_integer` does not appear in `comparison_array`"
  IF contains_number == false
END

----------------------

Code

=end
