# 7) LETTER COUNTER (PART 2):
# --------------------------------------------------------------------------- #
# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size.  For instance, the length of "it's"
# is 3, not 4.
# --------------------------------------------------------------------------- #

def word_sizes(words_string)
  size_hash = Hash.new(0)
  
  words_string.split(' ').each do |word|
    word_trimmed = word.delete('^A-Za-z')
    size_hash[word_trimmed.length] += 1
  end
  
  size_hash
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
