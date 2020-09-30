# 1) SHORT LONG SHORT
# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again.  You may
# assume that the strings are of different lengths.
# --------------------------------------------------------------------------- #

def short_long_short(string1, string2)
  newstring = ""
  if string1.length > string2.length
    newstring = string2.concat(string1, string2)
  else
    newstring = string1.concat(string2, string1)
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p short_long_short('abc', 'defgh') == "abcdefghabc"     # => true
p short_long_short('abcde', 'fgh') == "fghabcdefgh"     # => true
p short_long_short('', 'xyz') == "xyz"                  # => true
