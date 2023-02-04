=begin
Problem:
Store cards
Need a data structure for storing a full dekc of cards; all suits, cards, and
their values
-----------------------
Questions:

Input: N/A
Output: N/A
Rules:
  Explicit Requirements
  - Need all 4 suits all categorized and split up by cards suit
  - Need full list of each suits cards and their in-game values

-----------------------
Examples:
{
'H' => {
  '1' => 1, '2' => 2, ..., '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
  'A' => [11, 1]

-----------------------
Data Structure: Hash within a `full_deck` method. Initialize `game_deck` to the
                return value of calling `full_deck` (the below hash)

def full_deck
  {
    H => { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
           'A' => [1, 11] },
    D => { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
           'A' => [1, 11] },
    C => { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
           'A' => [1, 11] },
    S => { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
           'A' => [1, 11] }
  }
end

Algorithm:
- Initialze `game_deck` equal to the return value of calling the `full_deck`
  (above example) method.
- When a card is used, delete it from the `game_deck` after adding all
  keys/values to the required player/dealer/card display arrays and nested
  arrays.

-----------------------
Code:
=end

# ------------------------------------------------------------------------------

=begin
Problem:
Store dealer and computer hands
Need a data structure in order to keep track of the dealer and player hands.
This structure will be the in-game representation of a player and dealers hand.
-----------------------
Questions:

Input: N/A
Output: N/A
Rules:
  Explicit Requirements
  - Need to be able to see the suit and card (also the associated value)
    - suit/card can be stored in a nested array
    - cards values, could be stored in a separate array (if an 11 is part of the
      array, and the players hand is over 21, that 11 needs to be reassigned to
      a 1)
      - sum of cards can be stored in a separate variable

-----------------------
Examples:

-----------------------
Data Structure: Nested array for cards in player hand, same for dealer hand.
                `player_hand` =
                [['C', 'A'], ['H', '10']] displayed as a card (next PEDAC below)


                Values could be stored in a separte array.
                `player_hand_values`
                [11 (or 1), 10]

                Player total can be stored as a variable.
                player_total = 11 (or 1)

Algorithm:

-----------------------
Code:
=end

# ------------------------------------------------------------------------------

=begin
Problem:
Display dealer and player cards
Need a structure/display method to hold card values and to populate the on
screen display of the cards
-----------------------
Questions:

Input: Nested array containing String value of suit, and string value of card.
       The string '10' needs to be displayed as '1 0' on the card. This input
       would come from the `dealer_hand` and `player_hand` nested arrays
Output: Representation of a card with the suit and number displayed on it is
        printed in the terminal
Rules:
  Explicit Requirements
  - Both player cards are shown from the beginning
  - First dealer card is shown, the second is face down (blank card)
    - Dealer shows card when players turn is over, then hits/stays as required

-----------------------
Examples:
 -----   -----
|H    | |C    |
| 1 0 | |  A  |
|    H| |    C|
 -----   -----
-----------------------
Data Structure: `#puts` with interpolated values to create card display

Algorithm:

****Method that displays both cards*****
top_bottom =  ' ----- ' * number of nested arrays
line_1 = 'helper method with `array` passed in'
      Helper Method (pass in `array`)
        - line = '|' (first or last param to decide spacing? Single helper meth?)
        - Each iteration of nested `array` (block param `sub_arr`)
          - line << "#{sub_arr[0]}    | "
          - OR line << "    | " # if + doesn't work above
        - Implicitly return `line`

line_2 = 'helper method with `array` passed in'
      Helper Method (pass in `array`)
        - line = '| '
        - Each iteration of nested `array` (block param `sub_arr`)
        - line << "1 0 | " if sub_arr[1] equals '10' (string object 10)
        - line << " #{sub_arr[1]  | "
        - Implicitly return line

line_3 = 'line_1 helper method with `array` passed in and `last` argument to tell
          method to put letter right before end pipe (|)'

display `top_bottom`
display `line_1`
display `line_2`
display `line_3`
display `top_bottom`
*****

****Method that displays only dealers first card, and blank second card*****
top_bottom =  ' ----- ' * 2
line_1 = 'helper method with `array` passed in'
      Helper Method (pass in `array`)
        - line = '|' (first or last param to decide spacing? Single helper meth?)
        - line << "#{array[0][0]}    | |     |"
        - Implicitly return `line`

line_2 = 'helper method with `array` passed in'
      Helper Method (pass in `array`)
        - line = '| ')
        - line << "1 0 | |     |" if `array[0][1]` equals '10' (string object 10)
        - line << " #{array[0][1]  | |     |"
        - Implicitly return `line`

line_3 = 'line_1 helper method with `array` passed in and `last` argument to tell
          method to put letter right before end pipe (|)'

display `top_bottom`
display `line_1`
display `line_2`
display `line_3`
display `top_bottom`
*****
-----------------------
Code:
=end

# ------------------------------------------------------------------------------

=begin
Problem:
Calculating Hand = Also check for aces
Remember that aces can be worth either 1 or 11, depending on the context. You
should not ask the user what the value of the ace is; your program should be
able to figure this out automatically.

-----------------------
Questions:

Input: Array of integers
Output: Current sum of a player or dealer hand
Rules:
  Explicit Requirements
  - Obtain array of integers
    - If array contains one or more 11's calculate and reassign to a 1 as
      needed to avoid a bust

-----------------------
Examples:
Values could be stored in a separte array.
(From Store dealer and computer hands, but added other values)
[11 (or 1), 5, 2, 11 (or 1)]

-----------------------
Data Structure: Input of an array, output of an integer representing current
                hands value/total

Algorithm:
- Calculate the sum of the total array
- If over 21, check for first integer 11 occurrence and change to a 1
- Recalculate the sum of the total array
- Repeat until below 22 or until there are no more 11's in the array
- Return the new sum

Example of code snippit that could work:
def calculate_hand_total(arr)
  loop do
    if arr.sum > 21
      change_idx = arr.index(11)
      arr[change_idx] = 1
    end

    break if arr.sum <= 21

  p arr.sum
end
-----------------------
Code:
def calculate_hand_total(arr) # May not need to loop since array is mutated within methodd
  p arr
  p arr.sum
  loop do
    if arr.sum > 21
      change_idx = arr.index(11)
      arr[change_idx] = 1
    end

    break if arr.sum <= 21
  end
  arr.sum
end

arr = [11, 5, 2, 11, 7]

p hand_total(arr)
p arr
=end

def calculate_hand_total(arr) # May not need to loop since array is mutated within methodd
  p arr
  p arr.sum
  loop do
    break if arr.index(11).nil?
    if arr.sum > 21
      change_idx = arr.index(11)
      arr[change_idx] = 1
    end

    break if arr.sum <= 21
  end
  arr.sum
end

arr = [11, 5, 2, 11, 7]

p calculate_hand_total(arr)
p arr