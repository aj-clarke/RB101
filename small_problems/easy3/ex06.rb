# Original solution
def xor?(arg1, arg2)
  count = 0
  count += 1 if arg1 == true
  count += 1 if arg2 == true
  # p count
  if count.eql?(1)
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true   # => true
p xor?(5.odd?, 4.odd?) == true     # => true
p xor?(5.odd?, 4.even?) == false   # => true
p xor?(5.even?, 4.odd?) == false   # => true

# Refactored based off of skimming through other solutions
def xor2?(value1, value2)
  return false if value1 == value2
  true
end

p xor2?(5.even?, 4.even?) == true   # => true
p xor2?(5.odd?, 4.odd?) == true     # => true
p xor2?(5.odd?, 4.even?) == false   # => true
p xor2?(5.even?, 4.odd?) == false   # => true
