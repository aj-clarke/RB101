=begin
Question:
Reversed Arrays (Part 1)
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Note: for the test case list = ['abc'], we want to reverse the elements in the
array. The array only has one element, a String, but we're not reversing the
String itself, so the reverse! method call should return ['abc'].

  -----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array
Output: Same Array but elements reversed
Rules:
  Explicit Requirements
    - Create method that takes array and reverses its elements in place
      - RETURN THE SAME ARRAY OBJECT
      - Ex:
        - ['abc'] returns ['abc']
        - [1, 2] returns [2, 1]
    - Cannot use Array#reverse or Array#reverse!

  Implicit Requirements
    - Empty array returns same empty array
-----------------------
Examples:
list = [1,2,3,4]
result = reverse_it!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse_it!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse_it!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse_it!(list) == [] # true
list == [] # true

-----------------------
Data Structure: Array
Algorithm:
- Create method `reverse_it!` with param of `arr`
- Initialize `initial_elements_counter` equal to `arr` size - 1
- Initialize `elements_to_delete` equal to `arr` size - 1
- Add copies of each element into the array, starting with the last one
- Delete elements from array via iteration with the `elements_to_delete` counter



-----------------------
Code:
=end