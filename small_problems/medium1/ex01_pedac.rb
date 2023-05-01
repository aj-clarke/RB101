=begin
Question:
Rotation (Part 1)
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

-----------------------
Rules:
  Explicit Requirements
  - Rotate the input array by moving the first element to the end of the Array
    - This should NOT transform the original input array

  Implicit Requirements

I: Array
O: New array


-----------------------
Examples:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

-----------------------
Modeling:
[7, 3, 5, 2, 9, 1] == [3, 5, 2, 9, 1, 7]

result = []
iterate the original Array |num|
  push into result `num.dup` => result => [7, 3, 5, 2, 9, 1]

`rotating_int` to equal calling #shift on the `result` Array => 7
append/push `rotating_int` into `result`  => return value => [3, 5, 2, 9, 1, 7]

-----------------------
Scratch Pad:


-----------------------
Data Structure:
I: Array
W: Modifying duplicate array
O: New modified array

Algorithm:
< given an array `arr` >

Initialize `result` to an empty collection

Iterate through the input array `arr` |num|
  push a duplicate of `num` into the result Array [7, 3, 5, 2, 9, 1]
 
Initialize `rotating_int` equal to the return value of removing the first array object (destructively)

Append `rotating_int` into `result`

-----------------------
Code:
=end
