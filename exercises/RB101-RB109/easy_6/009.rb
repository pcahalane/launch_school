# 9) DOES MY LIST INCLUDE THIS?
# Write a method named include? which takes an Array and a search value as
# arguments.  This method should return true if the search value is in the
# array, false if it is not.  (do not use Array#include?)
# --------------------------------------------------------------------------- #

def include?(array, target)
  matches = array.select { |element| element == target }
  !matches.empty?
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
