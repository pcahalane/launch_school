# 9) CONVERT A NUMBER TO A STRING!
# Write a method that takes a positive integer or 0 and converts it to a
# string representation without using any standard Ruby conversion methods.
# --------------------------------------------------------------------------- #

CONVERSION_KEY = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  string = ''
  loop do
    number, remainder = number.divmod(10)
    string.prepend(CONVERSION_KEY[remainder])
    break if number == 0
  end
  string
end

# --------------------------------------------------------------------------- #
# EXAMPLES (should all output 'true'):
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'