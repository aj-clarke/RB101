=begin
In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << 'Dino'
=end

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.concat(['Dino', 'Hoppy'])
flintstones.concat(%w(Dino Hoppy))
# flintstones.push('Dino').push('Hoppy')

p flintstones
