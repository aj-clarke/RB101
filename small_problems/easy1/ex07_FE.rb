def stringy(int, default_start = 1)
  array = []

  int.times do |num|
    if default_start.eql?(1)
      element = num.even? ? 1 : 0
      array << element
    else
      element = num.odd? ? 1 : 0
      array << element
    end
  end

  array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(3) == '101'
puts stringy(8) == '10101010'
puts stringy(8, 0) == '01010101'
