# 7) DOUBLE CHAR (PART 1): -------------------------------------------------- #
# Write a method that takes a string, and returns a new string in which every
# character is doubled.
# --------------------------------------------------------------------------- #

def repeater(string)
  string.chars.zip(string.chars).join
end

# EXAMPLES: ----------------------------------------------------------------- #
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
