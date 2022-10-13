# In this hash of people and their age,

ages = { 'Herman' => 32,
         'Lily' => 30,
         'Grandpa' => 402,
         'Eddie' => 10
}

p ages.include?('Spot')                     # Expect false
p ages.include?('Herman')                   # Expect true

p (ages.any? { |key, _| key == 'Spot' })    # Expect false
p (ages.any? { |key, _| key == 'Herman' })  # Expect true

p ages.key?('Spot')                         # Expect false
p ages.key?('Herman')                       # Expect true

p ages.member?('Spot')                      # Expect false
p ages.member?('Herman')                    # Expect true