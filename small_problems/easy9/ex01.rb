def greetings(arr, hsh)
  name = arr.join(' ')
  job = hsh.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{job} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
