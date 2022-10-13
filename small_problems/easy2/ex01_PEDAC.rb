=begin
Question:

Build a program that randomly generates and prints Teddy's age. To get the age,
you should generate a random number between 20 and 200.

----------------------
Problem:

Create a method that generates a random age for Teddy between 20 and 200.

Explicit Requirements:
- Print Teddy's age to the screen
- Generate random number between 20 and 200 for age

Implicit Requirements:
- Do not return age, print it

Inputs:
N/A

Outputs:
String with randomly generated age printed to screen

----------------------

Examples:

random_age("Teddy")   # => Teddy is 149 years old!
random_age()          # => Teddy is 59 years old!
random_age("Bill")    # => Bill is 188 years old!

----------------------

Data Structure: N/A
Input: String or defaults to "Teddy"
Output: Concatenated string

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD:
- Create method random_age with one parameter 'name' that has default of 'Teddy'
- Generate random number between 20 and 200; set to variable `age`
- String interpolate and `puts`:
  puts "#{name} is #{age} years old!"

MAIN:
- Initialize `name` variable to get user input
- Call/Invoke method with or without `name` as argument

**PSEUDO - Formal**
START
DEF METHOD random_age(name = "Teddy")
  age = (20..200).to_a.sample
  puts "#{name} is #{age} years old!"
END METHOD

SET name = gets.chomp
INVOKE random_age with or without (name)
END
----------------------

Code

=end
