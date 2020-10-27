# 6) COMBINING ARRAYS
# Write a method that takes two Arrays as arguments, and returns an Array
# that contains all of the values from the argument Arrays.  There should
# be no duplication of values in the returned Array, even if there are
# duplicates in the original Arrays.
# --------------------------------------------------------------------------- #

def merge(array1, array2)
  result_array = []
  array1.each { |element| result_array << element }
  array2.each { |element| result_array << element }
  result_array.uniq!
end

# --------------------------------------------------------------------------- #
# EXAMPLE:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]    # => true
