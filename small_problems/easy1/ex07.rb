def stringy(int)
  array = []
  counter = int
  string = ''

  loop do
    array << 0
    counter -= 1
    break if counter.eql?(0)
  end

  array.each_index do |index|
    array[index] = 1 if index.even? == true
    string.insert(-1, array[index].to_s)
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(3) == '101'
puts stringy(8) == '10101010'
