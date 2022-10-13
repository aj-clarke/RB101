def calc_square_meters(length, width)
  length * width
end

def convert_sqmtr_sqft(square_meters)
  square_meters * 10.7639 # square feet conversion
end

def display_area_size(sq_meters, sq_feet)
  puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square" \
        " feet)."
end

room_size = {}

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

room_size[:sq_meters] = calc_square_meters(length, width)
room_size[:sq_feet] = convert_sqmtr_sqft(room_size[:sq_meters])

display_area_size(room_size[:sq_meters], room_size[:sq_feet])

# Further Exploration
# -----------------------------------
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

def fe_calc_feet_sqft(length, width)
  length * width
end

def fe_convert_sqft_sqin(sq_feet)
  sq_feet * SQFEET_TO_SQINCHES
end

def fe_convert_sqft_sqcm(sq_feet)
  sq_feet * SQFEET_TO_SQCENTIMETERS
end

def fe_display_area_size(sq_feet, sq_inches, sq_centimeters)
  puts "The room is #{sq_feet} square feet. This is equal to #{sq_inches} " \
       "square inches, or #{sq_centimeters} square centimeters."
end

fe_room_area = {}

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

fe_room_area[:sq_feet] = fe_calc_feet_sqft(length, width)
fe_room_area[:sq_inches] = fe_convert_sqft_sqin(fe_room_area[:sq_feet])
fe_room_area[:sq_centimeters] = fe_convert_sqft_sqcm(fe_room_area[:sq_feet])

fe_display_area_size(fe_room_area[:sq_feet], fe_room_area[:sq_inches],
                     fe_room_area[:sq_centimeters])
