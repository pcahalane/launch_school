# 10) THE END IS NEAR BUT NOT HERE: ----------------------------------------- #
# Write a method that returns the next to last word in the String passed to
# it as an argument; words are any sequence of non-blank characters.  You may
# assume the input String will always contain at least two words.
# --------------------------------------------------------------------------- #

def penultimate(string)
  string.split(" ")[-2]
end

# EXAMPLES: ----------------------------------------------------------------- #
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
