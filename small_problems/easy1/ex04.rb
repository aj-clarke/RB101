def count_occurrences(array)
  hash = {}

  array.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  hash.each { |k, v| puts "#{k} => #{v}" }
end

colors = ['red', 'blue', 'white', 'red', 'green', 'yellow', 'white', 'white']

count_occurrences(colors)

# Could have used below syntax for some of the solution
# p colors.uniq
# p colors.count('red')
