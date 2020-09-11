# PROBLEM: STRINGY STRINGS

#   Write a method that takes one argument, a positive integer, and returns a string of
# alternating 1s and 0s, always starting with a 1.  The length of the string should match
# the given integer.

# METHOD:
def stringy(num, start = 1)
  
  counter = num
  numstring = ""
  
  while counter > 0
    numstring << "1" if start == 1
    numstring << "0" if start == 0
    counter -= 1
    while counter > 0
      numstring << "0" if start == 1
      numstring << "1" if start == 0
      counter -= 1
      break
    end
  end
  numstring
end

# EXAMPLES:
puts stringy(6) == '101010'     # => true
puts stringy(9) == '101010101'  # => true
puts stringy(4) == '1010'       # => true
puts stringy(7) == '1010101'    # => true

puts stringy(6, 0) == '010101'  # => true