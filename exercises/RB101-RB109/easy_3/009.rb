# 9) PALINDROMIC STRINGS (PART 2)
# Write another method that returns true if the string passed as an argument
# is a palindrome, false otherwise.  This time the method must be case-
# insensitive and should ignore all non-alphanumeric characters.
# --------------------------------------------------------------------------- #

def real_palindrome?(string)
  string = string.gsub(/\W/, '').downcase
  string == string.reverse
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p real_palindrome?('madam') == true           # => true
p real_palindrome?('Madam') == true           # => true # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # => true # (only alphanumerics matter)
p real_palindrome?('356653') == true          # => true
p real_palindrome?('356a653') == true         # => true
p real_palindrome?('123ab321') == false       # => true
