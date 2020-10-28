# 10) GET THE MIDDLE CHARACTER: --------------------------------------------- #
# Write a method that takes a non-empty string argument, and returns the
# middle character or characters of the argument.  If the argument has an odd
# length, you should return exactly one character.  If the argument has an
# even length, you should return exactly two characters.
# --------------------------------------------------------------------------- #

def center_of(string)
  middle_idx = (string.length.to_f / 2 )
  string.length.odd? ? (p string[middle_idx]) : (p string[middle_idx - 1, 2])
end

# EXAMPLES: ----------------------------------------------------------------- #
center_of('I love ruby') == 'e'     # 11    
center_of('Launch School') == ' '   # 13
center_of('Launch') == 'un'         # 6
center_of('Launchschool') == 'hs'   # 12
center_of('x') == 'x'               # 1
