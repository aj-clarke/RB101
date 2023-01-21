=begin
Question:
Staggered Caps (Part 2)
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Method takes in string
  - Returns a NEW string
- Return string contains staggered capitalization representation of original str
- Non letter characters should not be changed
  - They DO NOT COUNT when determining upper and lowercase character switching
Input: String
Output: New string with string characters mutated as required
Rules:
  Explicit Requirements
  - Method returns NEW STRING
  - New string will contain staggered capitalization scheme
    - Every other character is capitalized, and remaining are lowercase
  - Non-letter characters are not changed, and they DO NOT count when executing
    the capitalization scheme

  Implicit Requirements
  - The first letter in the string will start as uppercase
-----------------------
Examples:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

-----------------------
Data Structure: Characters manipulated in array and joined back together
Algorithm:
- Create method `staggered_case` with param `string`
- Initialize `upcase` to boolean `true` value
- Initialize `new_str` to converting `string` into array of characters, then
  iterate through `char`
  - Skip iteration if `char` is not a letter
  - If `char` is a letter, and upcase is `true`, then upcase destructively
  - Else if `char` is a letter, and upcase is `false`, then downcase
    destructively
  - Implicitly return joinend `new_str`

-----------------------
Code:
=end