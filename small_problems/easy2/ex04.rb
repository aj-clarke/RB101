require 'date'

current_year = Date.today.cwyear

puts "What is your current age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - age
retirement_year = years_until_retirement + current_year

puts "It is #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_until_retirement} years of work to go!"
