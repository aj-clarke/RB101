def multiply(int1, int2)
  int1 * int2
end

def square(int)
  multiply(int, int)
end

p square(5) == 25
p square(-8) == 64
