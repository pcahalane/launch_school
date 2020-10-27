# 5) REVERSED ARRAYS (PART 2):
# Write a method that takes an Array, and returns a new Array with the
# elements of the original list in reflect_array order.  Do not modify the
# original list.  You may not use #reverse or #reverse!, or the method from
# the previous exercise.
# --------------------------------------------------------------------------- #

def reflect_array(array)
  reflection = []
  array.each { |element| reflection.unshift(element) }
  reflection
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
reflect_array([1,2,3,4]) == [4,3,2,1]          # => true
reflect_array(%w(a b e d c)) == %w(c d e b a)  # => true
reflect_array(['abc']) == ['abc']              # => true
reflect_array([]) == []                        # => true

list = [1, 3, 2]                               # => [1, 3, 2]
new_list = reflect_array(list)                 # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
