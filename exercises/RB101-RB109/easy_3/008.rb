# 8) PALINDROMIC STRINGS (PART 1)
# Write a method that returns true if the string passed as an argument is a
# palindrome, false or otherwise.  A palindrome reads the same forward and
# backward.  For this exercise, case matters as does punctuation and spaces.
# --------------------------------------------------------------------------- #

def palindrome?(string)
  string == string.reverse
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p palindrome?('madam') == true            # => true
p palindrome?('Madam') == false           # => true (case matters)
p palindrome?("madam i'm adam") == false  # => true (all characters matter)
p palindrome?('356653') == true           # => true
