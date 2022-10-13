def valid_num?(num)
  num.to_s.to_i == num && num > 0
end

system 'clear'
number = 0
loop do
  puts '>> Please enter a positive integer greater than 0:'
  number = gets.chomp.to_i
  break if valid_num?(number)
  puts '>> Invalid input, please try again.'
end

response = nil
end_program = false
loop do
  puts "\n>> Enter 's' to compute the sum or 'p' to compute the prodcut."
  response = gets.chomp

  if response.to_s.downcase.eql?('s')
    # sum = 0
    # (1..number).each { |num| sum += num }
    sum = (1..number).inject { |total, num| total + num }
    puts "\nThe sum of the integers between 1 and #{number} is #{sum}."
    end_program = true
  elsif response.to_s.downcase.eql?('p')
    # product = 1
    # (1..number).each { |num| product *= num }
    product = (1..number).inject(:*)
    puts "\nThe product of the integers between 1 and #{number} is #{product}."
    end_program = true
  else
    puts "Invalid selection. Please try again."
    end_program = false
  end
  break if end_program
end

puts ""
