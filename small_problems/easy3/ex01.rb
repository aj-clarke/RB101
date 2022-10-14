comparison_array = []
input_order = %w(1st 2nd 3rd 4th 5th)
count = 0

loop do
  puts "==> Enter the #{input_order[count]} number:"
  number = gets.chomp.to_i
  comparison_array << number
  break if count.eql?(4)
  count += 1
  p count
end

puts '==> Enter the final number:'
comparison_integer = gets.chomp.to_i

if comparison_array.include?(comparison_integer)
  puts "The integer #{comparison_integer} appears in #{comparison_array}"
else
  puts "The integer #{comparison_integer} does not appear in " \
  "#{comparison_array}"
end
