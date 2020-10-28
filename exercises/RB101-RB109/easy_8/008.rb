# 8) DOUBLE CHAR (PART 2): -------------------------------------------------- #
# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled.  Vowels, digits, punctuation and whitespace
# should not be doubled.
# --------------------------------------------------------------------------- #

ALPHABET = ('a'..'z').to_a
VOWELS = %(aeiou)
CONSONANTS = ALPHABET.select { |letter| !VOWELS.include?(letter) }

def double_consonants(string)
  doubled_string = ""
  
  string.chars.each do |char|
    doubled_string << char
    doubled_string << char if CONSONANTS.include?(char.downcase)
  end
  
  doubled_string
end

# EXAMPLES: ----------------------------------------------------------------- #
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
