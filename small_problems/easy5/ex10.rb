def print_in_box(text)
  left_corner = "+-"
  right_corner = "-+"
  left_side = "| "
  right_side = " |"
  text = text[0, 76] if text.size > 76
  puts left_corner + ("-" * text.size) + right_corner
  puts left_side + (" " * text.size) + right_side
  puts left_side + (text) + right_side
  puts left_side + (" " * text.size) + right_side
  puts left_corner + ("-" * text.size) + right_corner
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('123456789012345678901234567890123456789012345678901234567890123456
              78901234567890')
