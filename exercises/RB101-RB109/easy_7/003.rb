# 3) CAPITALIZE WORDS:
# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character
# of every word capitalized and all other letters lowercase.  You may assume
# that words are any sequence of non-blank characters.
# --------------------------------------------------------------------------- #

def word_cap(string)
  string.split(" ").map { |word| word.capitalize }.join(" ")
end

# EXAMPLES: ----------------------------------------------------------------- #
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# Without using the conventional String#capitalize methods, write two
# solutions to the problem above.
# --------------------------------------------------------------------------- #
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def word_cap2(string)
    capped_array = string.split(" ").each do |word|
      (word[0] = UPPERCASE[LOWERCASE.index(word[0])]) if LOWERCASE.include?(word[0])
    end
    capped_array.join(" ")
end

# EXAMPLES: ----------------------------------------------------------------- #
word_cap2('four score and seven') == 'Four Score And Seven'
word_cap2('the javaScript language') == 'The Javascript Language'
word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

# --------------------------------------------------------------------------- #
# REUSES LOWERCASE & UPPERCASE CONSTANTS SET ABOVE

def word_cap3(string)
  string.split.each { |word| word[0] = word[0].capitalize }.join(" ")
end

# EXAMPLES: ----------------------------------------------------------------- #
word_cap3('four score and seven') == 'Four Score And Seven'
word_cap3('the javaScript language') == 'The Javascript Language'
word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'
