=begin
Question:
Welcome Stranger
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array of strings and a Hash with symbols as keys and strings as their values
Output: String with required values interpoalted
Rules:
  Explicit Requirements
  - Method takes in 2 arguments (array and hash)
    - Array containes 2 or more elements
      - Must be combined with ajoining spaces to produce persons full name
    - Hash contains 2 keys; `:title` and `:occupation` with their respective values
  - Method should return a string
    - A greeting that uses the persons full name, and their title + occupation

  Implicit Requirements
  - 
-----------------------
Examples:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

-----------------------
Data Structure: Conversion of array to string hash values to array then string with required spaces
Algorithm:
- Define `greetings` method with params `arr` and `hsh`
- Combine `arr` elements into string with space as seperator
  - Initialize `name` as result of joining `arr` with a space as the seperator
- Combine `hsh` values into string with space as seperator
  - Initialize `job` to the result of each `hsh` value seperated by a space
- Generate string with above results
  - Display "Hello, `name`! Nice to have a `job` around."

-----------------------
Code:
=end
