# 4) ALL SUBSTRINGS: -------------------------------------------------------- #
# Write a method that returns a list of all substrings of a string.  The
# returned list should be ordered by where in the string the substring
# begins.  This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.  Since
# multiple substrings will occur at each position, the substrings should be
# returned in order from shortest to longest.
# --------------------------------------------------------------------------- #

def leading_substrings(string)
  counter = 0
  array = []
  
  until counter == string.length
    array << string[0, counter += 1]
  end
  array
end

def substrings(string)
  start_idx = 0
  substrings_array = []
  
  until start_idx == string.length
    substrings_array << leading_substrings(string[start_idx..-1])
    start_idx += 1
  end
  
  substrings_array.flatten!
end

# EXAMPLES: ----------------------------------------------------------------- #

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
