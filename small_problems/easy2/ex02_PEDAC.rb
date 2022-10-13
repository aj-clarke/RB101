=begin
Question:

Build a program that asks a user for the length and width of a room in meters
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

----------------------
Problem:

Create a program that displays/prints the area of a room in square meters
and square feet after obtaining the length and width from the user.

Explicit Requirements:
- Ask user for length and width of room in meters
- Display to the screen in square meters and square feet the size of the room
- Do not validate input

Implicit Requirements:
- Convert square meters to square feet to display square feet
- Convert output to float

Inputs:
Float or Integer

Outputs:
Float

----------------------

Examples:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

----------------------

Data Structure: Hash for storing different measurments
Input: Integers or Floats
Output: Float

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD:
- Create method `calc_square_meters` with two parameters; length and width
  - Parameters will be passed values from user response in MAIN
  - Calculate square meters via length * width
  - Return value into HASH

- Create method `convert_sqmtr_sqft` with one parameter; sqare_meters
  - Parameter will be passed value from hash in MAIN
  - Calculate square_meters * 10.7639 (square feet conversion)
  - Return value to HASH

- Create method, `display_area_size` with two parameters;
  sq_meters and sq_feet
  - Parameters will be obtained from hash in MAIN
  - Display
    - `The area of the room is #sq_meters square meters (#sq_feet square feet).`

MAIN:
- Create empty `room_size` hash

- Ask user for length then width dimensions
  - Save them as `length` and `width` variables *FLOATS*

- Set room_size[:sq_meters] equal to calc_square_meters(length, width)
- Set room_size[:sq_feet] equal to convert_sqmtr_sqft(room_size[:sq_meters])
- Call display_area_size (room_size[:sq_meters], room_size[:sq_feet])


**PSEUDO - Formal**
START
DEF METHOD calc_square_meters(length, width)
  RETURN length * width
END

DEF METHOD convert_sqmtr_sqft(square_meters)
  RETURN square_meters * 10.7639   # square feet conversion
END

DEF METHOD display_area_size(sq_meters, sq_feet)
  DISPLAY "The area of the room is #{sq_meters} square meters
           (#{sq_feet} square feet)."
END METHOD

SET room_size = {}
DISPLAY "Enter the length of the room in meters:"
SET length equal to user input to FLOAT
DISPLAY "Enter the width of the room in meters:"
SET width equal to user input to FLOAT

SET room_size[:sq_meters] = calc_square_meters(length, width)
SET room_size[:sq_feet] = convert_sqmtr_sqft(room_size[:sq_meters])

CALL display_area_size(room_size[:sq_meters], room_size[:sq_feet])

END

*FURTHER EXPLORATION*
METHOD
- Create method `fe_calc_feet_sqft` with two parameters; length and width
  - Return length * width

- Create method `fe_convert_sqft_sqin` with one parameter; sq_feet
  - Return sq_feet * 144 (convert to inches)

- Create method `fe_convert_sqft_sqcm` with one parameter; sq_feet
  - Return sq_feet * 929.03 (convert to centimeters)

- Create method `fe_display_area_size` with 3 parameters;
  sq_feet, sq_inches, sq_centimeters
  - Print "The room is #sq_feet square feet. This is equal to #sq_inches " \
    "square inches, or #sq_centimeters square centimeters."

MAIN
- Create `fe_room_area` empty hash
- Ask for user to input length and width in feet
  - Save values as fe_length and fe_width as FLOATs

- Set fe_room_area[:sq_feet] equal to fe_calc_feet_sqft(length, width).round(2)
- Set fe_room_area[:sq_inches] equal to
  fe_convert_sqft_sqin(fe_room_area[:sq_feet]).round(2)
- Set fe_room_area[:sq_centimeters] equal to
  fe_convert_sqft_sqcm(fe_room_area[:sq_feet]).round(2)

----------------------

Code

=end
