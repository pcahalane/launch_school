# 4) LETTER SWAP:
# --------------------------------------------------------------------------- #
# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.  You may assume that every word contains at least
# one letter, and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces.
# --------------------------------------------------------------------------- #

def swap(word_strings)
  
  swapped_string = ""
  
  swapped_array = word_strings.split(' ').each do |string|
    chars = [string[0], string[-1]]
    string[0], string[-1] = chars[-1], chars[0]
  end
  
  swapped_array.each do |word|
    swapped_string << word + " "
  end
  
  swapped_string.chop!
  
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
