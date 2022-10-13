# Shorten the following sentence:

advice = 'Few things in life are as important as house training your pet ' \
         'dinosaur.'

p advice

# The below two examples accomplish the same task
p advice.slice!(0..38)
p advice.slice!(0, advice.index('house'))
p advice
# Examples end

advice = 'Few things in life are as important as house training your pet ' \
         'dinosaur.'

p advice[0, advice.index('house')]
