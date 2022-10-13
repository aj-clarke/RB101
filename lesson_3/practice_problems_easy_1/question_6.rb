# Starting with the string:

famous_words = "seven years ago..."

# Show two differnt ways to put the expected "Four score and " in front of it.

# Concatenation
p "Four score and " + famous_words

# Concatenation
p "Four score and " << famous_words

# Use insert with index position 0 to insert string before existing string.
p famous_words.insert(0, "Four score and ")

# Use prepend method to prepend provided string.
p famous_words.prepend("Four score and ")
