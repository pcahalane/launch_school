# 3) LEADING SUBSTRINGS: ---------------------------------------------------- #
# Write a method that returns a list of all substrings of a string that
# start at the beginning of the original string.  The return value should be
# arranged in order from shortest to longest substring.
# --------------------------------------------------------------------------- #

def leading_substrings(string)
  counter = 0
  substrings_array = []
  
  until counter == string.length
    substrings_array << string[0, counter += 1]
  end
  
  substrings_array
end

# EXAMPLES: ----------------------------------------------------------------- #
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
