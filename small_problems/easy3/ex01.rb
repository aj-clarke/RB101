comparison_array = []

puts '==> Enter the 1st number:'
number = gets.chomp.to_i
comparison_array << number

puts '==> Enter the 2nd number:'
number = gets.chomp.to_i
comparison_array << number

puts '==> Enter the 3rd number:'
number = gets.chomp.to_i
comparison_array << number

puts '==> Enter the 4th number:'
number = gets.chomp.to_i
comparison_array << number

puts '==> Enter the 5th number:'
number = gets.chomp.to_i
comparison_array << number

puts '==> Enter the final number:'
comparison_integer = gets.chomp.to_i

contains_number = ''
comparison_array.each do |integer|
  if integer.eql?(comparison_integer)
    (contains_number = true)
    break
  else
    (contains_number = false)
  end
end

if contains_number == true
  puts "The integer #{comparison_integer} appears in #{comparison_array}" 
elsif contains_number == false
  puts "The integer #{comparison_integer} does not appear in " \
       "#{comparison_array}"
end
