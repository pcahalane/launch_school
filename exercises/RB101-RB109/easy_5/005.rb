# 5) CLEAN UP THE WORDS:
# --------------------------------------------------------------------------- #
# Given a string that consists of some words (all lowercased) and an
# assortment of non-alphabetic characters, write a method that returns the
# string with all the non-alphabetic characters replaced by spaces.  If one
# or more non-alphabetic characters occur in a row, you should only have one
# space in the result; it should never have consecutive spaces.
# --------------------------------------------------------------------------- #

ALPHABETIC_CHARS = ('a'..'z')

def cleanup(string)
  new_string = ""
  
  string.chars do |char|
    ALPHABETIC_CHARS.include?(char) ? (new_string << char) : (new_string << ' ')
  end
  
  new_string.squeeze
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p cleanup("---what's my +*& line?") == ' what s my line '
