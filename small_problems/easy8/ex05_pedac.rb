=begin
Question:
fizzbuzz
Write a method that takes two arguments: the first is the starting number, and
the second is the ending number. Print out all numbers from the starting number
to the ending number, except if a number is divisible by 3, print "Fizz", if a
number is divisible by 5, print "Buzz", and finally if a number is divisible by
3 and 5, print "FizzBuzz".

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Two integers used to print a range from first to second
Output: Print (puts?) numbers from starting number to ending number with `Fizz`,
        `Buzz`, or `FizzBuzz` printed instead of the number as required
Rules:
  Explicit Requirements
  - Method should print out all numbers from start to end
  - BUT
  - If number is divisable by 3, print `Fizz` instead
  - If number is divisable by 5, print `Buzz` instead
  - If number is divisable by both, print `FizzBuzz` instead

  Implicit Requirements
  - Output looks to be just a line by line `puts` method being used to display
    result
-----------------------
Examples:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

-----------------------
Data Structure: Using a range to iterate through numbers with some conditionals
                (case?) used to determine what is printed to the screen
Algorithm:
- Define `fizzbuzz` with params `start_int` and `end_int`
- Create a range of integers from `start_int` to `end_int`
- Use if conditional statement to determine what to output (integer, 'Fizz',
  'Buzz', or 'FizzBuzz')
  - Puts result of conditional statement to the screen
-----------------------
Code:
=end