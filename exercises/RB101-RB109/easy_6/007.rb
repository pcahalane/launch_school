# 7) HALVSIES
# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half
# of the original Array, respectively.  If the original array contains an
# odd number of elements, the middle element should be placed in the first
# half Array.
# --------------------------------------------------------------------------- #

def halvsies(array)
  splitnum = ( array.length.to_f / 2 ).round
  split_arrays = []
  split_arrays << array.slice(0, splitnum)
  split_arrays << array.slice(splitnum..-1)
  split_arrays
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]        # => true
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]  # => true
halvsies([5]) == [[5], []]                        # => true
halvsies([]) == [[], []]                          # => true
