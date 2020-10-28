# 5) UPPERCASE CHECK: ------------------------------------------------------- #
# Write a method that takes a string argument, and returns true if all the
# alphabetic characters inside the string are uppercase or false otherwise.
# Characters that are not alphabetic should be ignored.
# --------------------------------------------------------------------------- #
ALPHABET = ('a'..'z').to_a

def uppercase?(string)
  string.chars.select { |letter| ALPHABET.include?(letter) }.empty?
end

# EXAMPLES: ----------------------------------------------------------------- #
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
