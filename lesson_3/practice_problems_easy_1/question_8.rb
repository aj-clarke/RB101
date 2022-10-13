# Given the hash below:

flintstones = { 'Fred' => 0,
               'Wilma' => 1,
               'Barney' => 2,
               'Betty' => 3,
               'BamBam' => 4,
               'Pebbles' => 5
}

# Turn this into an array containing only two elements: Barney's name and number

p arr = flintstones.select { |key, _| key == 'Barney' }

p arr.to_a.flatten

# Provided solution uses the assoc method from the Hash class. If a given key is
# found, it returns a 2-element Array containing the key and its value.

p flintstones.assoc('Barney')