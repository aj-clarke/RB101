=begin
How could the following method be simplified without changing its return value?
=end

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Change to

def color_valid_optimized(color)
  color == 'blue' || color == 'green'
end