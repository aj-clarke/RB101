# If we build an array like this:

flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']

# You end up with the following array
# ['Fred', 'Wilma', ['Barney, 'Betty], ['BamBam', 'Pebbles']]

# Make this into an un-nested array.

# Use the flatten! method to flatten the array.

p flintstones.flatten!
