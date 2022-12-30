=begin
Question:
Running Totals
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

-----------------------
Problem:
- Creating a method that takes an array of integers
- Then returning an array with the exact same number of elements
- Each element in the new array will have the running total (sum) from the original array (Check examples for understanding)

Input: Array of integers
Output: Array of integers with running total
Rules:
  Explicit Requirements
    - Create method with one parameter for array Interrupt
    - Return new array with exact same number of elements
      - Elements in new array will consist of running total (sum) from the original Array

  Implicit Requirements
    - Array with one element returns new array with same/duplicate element
    - Array with no elements returns new array with no elements

-----------------------
Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

-----------------------
Data Structure: Array

-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `running_total` with parameter `arr`
- Initialize total to empty Array
- Initialize sum to 0
- Map to ``total`` each_with_index
  - If index > 0
    - Push into `total` result of `arr[index]` + `total[index - 1]`
  - Else
    - Push index into total
- Implicity return total

-----------------------
Code:
=end
