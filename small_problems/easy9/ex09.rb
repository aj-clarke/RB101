def find_and_display_anagrams(arr)
  result = {}
  arr.each do |word|
    hash_key = word.chars.sort.join
    if result.include?(hash_key)
      result[hash_key] << word
    else
      result[hash_key] = [word]
    end
  end
  result.values.each { |anagrams| p anagrams }
end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

find_and_display_anagrams(words)
