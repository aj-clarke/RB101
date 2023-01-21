=begin
Using the each method, write some code to output all of the vowels from the
strings.
=end

VOWELS = %w(a e i o u)

hsh = { first: ['the', 'quick'],
        second: ['brown', 'fox'],
        third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog'] }

hsh.each do |_, value|
  value.each do |word|
    word.each_char do |char|
      p char if VOWELS.include?(char)
    end
  end
end
