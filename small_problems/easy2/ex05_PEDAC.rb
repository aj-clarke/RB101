=begin
Question:

Write a program that will ask for user's name. The program will then greet the
user. If the user writes "name!" then the computer yells back to the user.

----------------------
Problem:

Create a program that requests a users name. The program will greet the user
normally unless there is an exclamation point after the name. If there is one,
then the program will yell back to the user.

Explicit Requirements:
- Request a users name
- Greet the user
- Greet the user via yelling back if there is an exclamation point

Implicit Requirements:
- Validate the last character of the input string to determine how to respond

----------------------

Examples:
- Without Exclamation point
What is your name? Bob
Hello Bob.

- With Exclamation point
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

----------------------

Data Structure: N/A
Input: String
Output: String

----------------------

Algorithm:

**PSEUDO - Informal**
- Ask user for name, set as variable `name`
- Check if the name has an exclamation in it via chained method
- IF name ends with !
  - Split name to an array,
  - Pop off !
  - Join array to string
  - Yell greeting
- ELSE greet nicely

**PSEUDO - Formal**
START
PRINT "What is your name?"
SET name = gets.chomp
IF name.split('').pop.include?('!')
  SET name = name.split('')
  SET name.pop
  SET name = name.join
  PRINT "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
ELSE
  PRINT "Hello #{name.capitalize}."
END

----------------------

Code

=end
