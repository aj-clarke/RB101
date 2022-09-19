# Intentionally did not use the Integer#times method

def repeat(str, int)
  counter = int

  loop do
    counter -= 1
    puts str
    break if counter.eql?(0)
  end
end

repeat 'hello', 3
repeat('nice!', 2)
