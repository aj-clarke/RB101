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
- Create an input order array for 1st through 5th count (quick create with %w)
- Create counter for input loop
- Begin integer input loop
  - Get input for each of the first 5 numbers (convert to integer)
    - Set the variable `number` as the input number then add it to the empty
      array
    - Increase counter
    - Break out of loop when counter equals 5
- Get input for the last number
  - Set a variable `comparison_integer` equal to the number (convert to integer)
- Check array to see if it INCLUDES the `comparison_integer`
  - If the `comparison_integer` matches one of the iterations integers
    - Display - The `comparison_integer` appears in the array
  - If the `comparison_integer` does not match one of the iterations integers
    - Display - The `comparison_integer` does not appear in the array

**PSEUDO - Formal**
START
SET comparison_array = []
SET input_order = %w(1st 2nd 3rd 4th 5th)
SET count = 1

LOOP
  DISPLAY "==> Enter the #{input_order[counter]} number:"
  SET number = gets.chomp.to_i
  SET comparison_array << number
  SET count += 1
  BREAK IF count.eql?(4)
END LOOP

*REFACTORED OUT*
----------------------------------------
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
----------------------------------------
*END REFACTORED OUT*

DISPLAY '==> Enter the final number:'
SET comparison_integer = gets.chomp.to_i

*REFACTORED OUT*
----------------------------------------
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
    DISPLAY "The integer `comparison_integer` does not appear in
      `comparison_array`"
      IF contains_number == false
    END
----------------------------------------
*END REFACTORED OUT*

IF `comparison_array.include?(comparison_integer)
  DISPLAY "The integer `comparison_integer` appears in `comparison_array`"
ELSE
  DISPLAY "The integer `comparison_integer` does not appear in
  `comparison_array`"
END
----------------------

Code

=end
