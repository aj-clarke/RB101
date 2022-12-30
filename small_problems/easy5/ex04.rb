def swap(str)
  str_arr = str.split(" ")
  new_str = str_arr.map do |word|
    swap_letter(word)
  end
  new_str.join(" ")
end

def swap_letter(word)
  # if word.size > 1
  #   word_arr = word.split("")
  #   word_arr[0], word_arr[-1] = word_arr[-1], word_arr[0]
  #   word_arr.join
  # else
  #   word
  # end
  word[0], word[-1] = word[-1], word[0]
  word
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'