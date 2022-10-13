# See if the name 'Dino' appears in the string below:

advice = 'Few things in life are as importat as hous training your pet dinosur'

# Below return false because of the capitol 'D':
p advice.include?('Dino')
p advice.match?('Dino')

# Below return true when using lowercase 'd':
p advice.include?('dino')
p advice.match?('dino')