# 7) CONVERT A STRING TO A NUMBER!:
# Write a method that takes a string of digits and returns the appropriate
# number as an integer without using standard Ruby conventions such as 
# String#to_i or Integer.  Assume all characters are numeric.
# --------------------------------------------------------------------------- #

CONVERSION_KEY = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  nums = string.chars.map { |char| CONVERSION_KEY[char] }
  
  num = 0
  nums.each { |number| num = 10 * num + number }
  num
end

# --------------------------------------------------------------------------- #
# EXAMPLES (all should output 'true'):
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
