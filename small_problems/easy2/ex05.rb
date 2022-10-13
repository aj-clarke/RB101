puts "What is your name?"
name = gets.chomp

if name.split('').pop.include?('!')
  name = name.split('')
  name.pop
  name = name.join
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?!?"
else
  puts "Hello #{name.capitalize}."
end
