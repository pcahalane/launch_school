# 1) ASCII STRING VALUE:
# Write a method that determines and returns the ASCII string value that is
# passed in as an argument.  The ASCII string value is the sum of the ASCII
# values of every character in the string.  (You may use String#ord to
# determine the ASCII value of a character.)
# --------------------------------------------------------------------------- #

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

# --------------------------------------------------------------------------- #
# EXAMPLES (all should return true):
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# There is an integer method such that:
# char.ord.mystery == char
# where mystery is our mystery method; can you determine what method name
# should be used in place of mystery?  What happens if you try this with a
# longer string instead of a single character?
# --------------------------------------------------------------------------- #

def testing(char)
  p "Character: #{char} (char.ord == #{char.ord}) (char.ord.chr == #{char.ord.chr}"
  char.ord.chr == char
end

p testing ('a')
p testing ('t')

# --------------------------------------------------------------------------- #
# Integer#chr returns a string containing the character represented by the
# integer's value according to encoding. (ie. 64.chr calls "A").
# This does not work to compare a string of more than one character as it will
# return only the value for the first character in the string.
