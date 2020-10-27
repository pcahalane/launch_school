# 2) DELETE VOWELS:
# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.
# --------------------------------------------------------------------------- #

VOWELS = 'aeiouAEIOU'

def remove_vowels(strings_array)
  strings_array.map do |word|
    word.delete(VOWELS)
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
