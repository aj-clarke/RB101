VOWELS = %w(a e i o u A E I O U)

def remove_vowels(arr)
  arr.each do |ele|
    ele.each_char do |char|
      ele.delete!(char) if VOWELS.include?(char)
    end
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
