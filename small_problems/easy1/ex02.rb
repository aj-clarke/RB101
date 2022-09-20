def is_odd?(int)
  result = int % 2

  if result.eql?(0)
    false
  else
    true
  end
end

p is_odd?(2)    # => false
p is_odd?(-5)   # => true
p is_odd?(6)    # => false
p is_odd?(13)   # => true
p is_odd?(0)    # => false
