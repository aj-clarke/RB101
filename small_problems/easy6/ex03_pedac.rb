=begin
Question:
Fibonacci Number Location By Length
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such
that the first 2 numbers are 1 by definition, and each subsequent number is the
sum of the two previous numbers. This series appears throughout the natural
world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1.)

You may assume that the argument is always greater than or equal to 2.
-----------------------
Questions:

Problem (Rewrite if needed else skip):
  - Create method that calculates then returns index position of FIRST
    Fibonacci number having the number of digits specified/passed-in as an
    argument
  - First Fibonacci number has an index position of 1 (not the same as a zero
    index array first position)
Input: Integer
Output: Integer representing Fibonacci index position which has the specified
        number of digits passed in as the initial argument
Rules:
  Explicit Requirements
    - Method takes in 1 integer argument
    - Integer argument represents the number of digits the Fibonacchi number is
      required to contain
    - Method must return the FIRST Fibonacci index position that contains the
      required number of digits
    - Argument will always be at least 2

  Implicit Requirements
    - Fibonacci index position is not the same as an array index position
      - Array index position is one less than the Fibonacci index position

-----------------------
Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

-----------------------
Data Structure: Array to contain dynamic Fibonacci numbers
Algorithm:
- Create `find_fibonacci_index_by_length` with param `length`
- Initialize `fib_arr` to array object with two integer elements; [1, 1]
# - Iterate through `fib_arr` and transform it by adding element that is the
#   result of the current element plus the previous element. (Want a result of
#   [1, 1, 2])
#     - Then test it with [1, 1, 2] with result of [1, 1, 2, 3]
- Initialize counter equal to 1
- Initialize fib_number to 0
- While the string length of the `fib_number` is less than `length`, set
  `fib_number` to the result of `fib_arr[counter]` plus `fib_arr[counter - 1]`,
  and push `fib_number` into the `fib_arr`
- Adding 1 to the counter after iteration is completed will provide the
  Fibonacci index position result

-----------------------
Code:
=end