def random_age(name = "Teddy")
  age = (20..200).to_a.sample
  puts "#{name.capitalize} is #{age} years old!"
end

name = gets.chomp

random_age(name)      # => "Name" is (random number) years old
random_age("Teddy")   # => Teddy is (random number) years old!
random_age            # => Teddy is (random number) years old!
random_age("Bill")    # => Bill is (random number) years old!
