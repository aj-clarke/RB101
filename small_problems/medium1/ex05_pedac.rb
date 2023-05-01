=begin
Question:
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

-----------------------
Problem (Rewrite if needed else skip):


Rules:
  Explicit Requirements
  - Method should display a 4 pointed diamond in an 'n x n' grid ('n' represents odd input integer)
  
  Implicit Requirements
  - All other rows of diamonds should be centered based on the largest row of diamonds
I: Integer
O: Ascii representation of a 4 pointed diamond


-----------------------
Examples:
diamond(1)
*

diamond(3)
 *
***
 *

 diamond(9)
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
-----------------------
Modeling:
diamond(3)
 *
***
 *

# Store the 3 as max_length
Store 3 / 2 as initial number of spaces (num_of_spaces) before an *
Store star = 1

Start some type of loop to run until the number of spaces `num_of_spaces` equals 0
Until `num_of_spaces` is equal to 0
`puts` (' ' * num_of_spaces) + ('*' * star)
num_of_spaces - 1
star + 2

puts ('*' * star)

Do the opposite

Until `num_of_spaces` is equal to (input number)
num_of_spaces + 1
star - 2
`puts` (' ' * num_of_spaces) + ('*' * star)

-----------------------
Scratch Pad:
until X up to with number of spaces starting at n / 2 for the first row, then subtracting 1 until it is zero
then skip for one iteration and reverse?

-----------------------
Data Structure:
I: Integer
W:
O: Diamond

Algorithm:
< given an integer `int` >
Output '*' if `int` = 1
return '*' if `int` eqauls 1

Initialize `num_of_spaces` equal to `int` / 2 
Initialize `star` equal to 1

Create a loop while `num_of_spaces` is greater than 0
  Output (empty space times `num_of_spaces`) + ('*' * star)
  Decrement `num_of_spaces` by 1
  Icrement `star` by 2

Output ('*' * star)

Create a loop while `star` is > `1`
  Decrement `star` by 2
  Icrement `num_of_spaces` by 1
  Output (empty space times `num_of_spaces`) + ('*' * star)

-----------------------
Code:
=end

# def diamond(int)
#   puts '*' if int.eql?(1)
#   return if int.eql?(1)
#   num_of_spaces = int / 2
#   star = 1
  
#   while num_of_spaces > 0
#     puts (' ' * num_of_spaces) + ('*' * star)
#     num_of_spaces -= 1
#     star += 2
#   end

#   puts ('*' * star)

#   while star > 1
#     num_of_spaces += 1
#     star -= 2
#     puts (' ' * num_of_spaces) + ('*' * star)
#   end
# end

#Nick
# def diamond(int)
#   rows = (1..int).step(2).to_a
#   p rows
#   rows += rows.reverse[1..-1]
#   p rows
#   rows.each { |row| puts ("*" * row).center(int) }
# end

diamond(1)
diamond(3)
diamond(9)