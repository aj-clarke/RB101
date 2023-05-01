def diamond(int)
  puts '*' if int.eql?(1)
  return if int.eql?(1)
  num_of_spaces = int / 2
  star = 1

  while num_of_spaces > 0
    puts (' ' * num_of_spaces) + ('*' * star)
    num_of_spaces -= 1
    star += 2
  end

  puts ('*' * star)

  while star > 1
    num_of_spaces += 1
    star -= 2
    puts (' ' * num_of_spaces) + ('*' * star)
  end
end

#Nick
# def diamond(int)
#   rows = (1..int).step(2).to_a
#   p rows
#   rows += rows.reverse[1..-1]
#   p rows
#   rows.each { |row| puts ("*" * row).center(int) }
# end

diamond(1)
diamond(3)
diamond(9)
