# 10) CONVERT A SIGNED NUMBER TO A STRING!:
# Write a method that takes an integer which may include negatives and
# converts it to a string representation without using standard conversion
# methods available in Ruby.
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

def signed_integer_to_string(num)
  if num < 0
    integer_to_string(num.magnitude).prepend('-')
  elsif num > 0
    integer_to_string(num.magnitude).prepend('+')
  else
    integer_to_string(num)
  end
end  

# --------------------------------------------------------------------------- #
# EXAMPLES (should all output 'true'):
p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'
