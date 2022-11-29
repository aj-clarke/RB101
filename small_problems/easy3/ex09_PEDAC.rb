=begin
Question:

Palindromic Strings (Part 2)

Write another method that returns true if the string passed as an argument is a
palindrome, false otherwise. This time, however, your method should be
case-insensitive, and it should ignore all non-alphanumeric characters. If you
wish, you may simplify things by calling the palindrome? method you wrote in
the previous exercise.

----------------------
Problem:
Create a method which returns true if the string passed in as an argument is
a palindrome; otherwise, return false. The method should be case-INSENSITIVE and
should ignore all non-alphanumeric characters. You can use the palindrome?
method created in the previous exercise.

Input: Strings
Output: Boolean (true/false) return value

Explicit Requirements:
- Create a method with one parameter for string injestion
- Method will return true if the string is a palindrome or false if it is not
- Method will be case-insensitive
- Method will ignore non-alphanumeric characters
- Can use palindrome? method from previous exercise

Implicit Requirements:
- Method will only return a true/false value; nothing else.

----------------------

Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

----------------------

Data Structure:
"Constant" array for lower-case alphabet and 0 - 9 characters to compare against

----------------------

Algorithm:

**PSEUDO - Informal**
- Create CONSTANT array of lower-case alphabet and 0 - 9 string characters
- Create method `real_palindrome?` with one parameter of `input`
  - Initialize variable `alpha_num` as a new string
  # - Create new duplicate of `input`
  - Set `input` equal to lower-case `input`
  - Iterate through `input` to remove non-alphanumeric characters
    - If character is in the CONSTANT array, add to `alpha_num`
  - Invoke palindrome? (from previous exercise) with `alpha_num` passed in as
    argument
    PALINDROME METHOD:

      def palindrome?(string)
      return true if string.reverse.eql?(string)
      false
      end

**PSEUDO - Formal**
START
METHOD:
DEF METHOD real_palindrome?(input)
  SET alpha_num = String.new
  SET input = input.downcase
  EACH input character (each_char not each)
    SHOVEL/CONCAT character into alpha_num IF ALPHANUMERIC includes? character
  END EACH
  INVOKE palindrome?(alpha_num)
END METHOD

DEF METHOD palindrome?(string)
  RETURN true IF string.reverse.eql?(string)
  RETURN false
END METHOD

MAIN:
SET 'ALPHANUMERIC' = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2
                        3 4 5 6 7 8 9 0)

INVOKE real_palindrome?(string here)
END

----------------------

Code

=end
