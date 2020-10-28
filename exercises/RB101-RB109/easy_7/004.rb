# 4) SWAP CASE:
# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version.  All other characters
# should be unchanged.  Do not use String#swapcase.
# --------------------------------------------------------------------------- #
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(string)
  swapped = ""
  
  string.chars.each do |char|
    if LOWERCASE.include?(char)
      swapped << UPPERCASE[LOWERCASE.index(char)]
    elsif UPPERCASE.include?(char)
      swapped << LOWERCASE[UPPERCASE.index(char)]
    else
      swapped << char
    end
  end

  swapped
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
