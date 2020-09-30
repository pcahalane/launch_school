# 8) CONVERT A STRING TO A SIGNED NUMBER!
# Adjust the previous method to also accept and retain a leading + or - sign
# in the given string; assume the string will always contain a valid number.
# --------------------------------------------------------------------------- #
# Initial solution:

CONVERSION_KEY = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

negative = false

def string_to_signed_integer(string)
  if string.start_with?('-') || string.start_with?('+')
    negative = true if string.start_with?('-')
    string.slice!(0)
  end
   
  nums = string.chars.map { |char| CONVERSION_KEY[char] }

  num = 0
  nums.each { |number| num = 10 * num + number }
  
  num *= -1 if negative
  num
end

# --------------------------------------------------------------------------- #
# Refactoring after reviewing launchshool solution to take advantage of the
# way case returns the value returned by a when or else statement.:
# --------------------------------------------------------------------------- #

CONVERSION_KEY = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
    nums = string.chars.map { |char| CONVERSION_KEY[char] }
    
    num = 0
    nums.each { |number| num = 10 * num + number }
    num
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES (all should output 'true'):
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
